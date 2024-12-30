package com.dkd.manage.controller;

import java.time.Duration;
import java.util.List;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.StrUtil;
import com.dkd.common.constant.DkdContants;
import com.dkd.common.exception.ServiceException;
import com.dkd.common.utils.DateUtils;
import com.dkd.manage.domain.*;
import com.dkd.manage.domain.Dto.TaskDetailDto;
import com.dkd.manage.domain.Dto.TaskDto;
import com.dkd.manage.domain.Vo.TaskVo;
import com.dkd.manage.service.ITaskTypeService;
import com.dkd.manage.service.IVendingMachineService;
import com.dkd.manage.service.impl.EmpServiceImpl;
import com.dkd.manage.service.impl.TaskDetailsServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.dkd.common.annotation.Log;
import com.dkd.common.core.controller.BaseController;
import com.dkd.common.core.domain.AjaxResult;
import com.dkd.common.enums.BusinessType;
import com.dkd.manage.service.ITaskService;
import com.dkd.common.utils.poi.ExcelUtil;
import com.dkd.common.core.page.TableDataInfo;

/**
 * 工单Controller
 * 
 * @author yk
 * @date 2024-12-29
 */
@RestController
@RequestMapping("/manage/task")
public class TaskController extends BaseController
{
    @Autowired
    private ITaskService taskService;

    @Autowired
    private HttpSession session;
    @Autowired
    private IVendingMachineService vendingMachineService;
    @Autowired
    private ITaskTypeService taskTypeService;
    @Autowired
    private EmpServiceImpl empServiceImpl;
    @Autowired
    private RedisTemplate redisTemplate;
    @Autowired
    private TaskDetailsServiceImpl taskDetailsServiceImpl;

    /**
     * 查询工单列表
     */
    @PreAuthorize("@ss.hasPermi('manage:task:list')")
    @GetMapping("/list")
    public TableDataInfo list(Task task)
    {
        startPage();
        List<TaskVo> list = taskService.selectTaskVoList(task);
        return getDataTable(list);
    }

    /**
     * 导出工单列表
     */
    @PreAuthorize("@ss.hasPermi('manage:task:export')")
    @Log(title = "工单", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Task task)
    {
        List<Task> list = taskService.selectTaskList(task);
        ExcelUtil<Task> util = new ExcelUtil<Task>(Task.class);
        util.exportExcel(response, list, "工单数据");
    }

    /**
     * 获取工单详细信息
     */
    @PreAuthorize("@ss.hasPermi('manage:task:query')")
    @GetMapping(value = "/{taskId}")
    public AjaxResult getInfo(@PathVariable("taskId") Long taskId)
    {
        return success(taskService.selectTaskByTaskId(taskId));
    }

    /**
     * 新增工单
     */
    @Transactional
    @PreAuthorize("@ss.hasPermi('manage:task:add')")
    @Log(title = "工单", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TaskDto taskDto)
    {

        //设置指派人id
        taskDto.setAssignorId(getUserId());

        //1.判断设备是否存在
        VendingMachine vm = vendingMachineService.selectRegionIdByInnerCode(taskDto.getInnerCode());
        if(vm==null) throw new ServiceException("设备不存在！");

        //2.校验售货机状态是否与工单类型是否相符合。
        //如果是投放工单，设备在运行中，出错
        //如果是维修工单，设备不在运行中，出错
        //如果是补货工单，设备不在运行中，出错
        //如果是撤机工单，设备不在运行中，出错

        Long vmStatus = vm.getVmStatus();
        TaskType taskType = taskTypeService.selectTaskTypeByTypeId(taskDto.getProductTypeId());

        if(taskType.getTypeName().equals("投放工单")){
            if(vmStatus==DkdContants.VM_STATUS_RUNNING){
                throw new ServiceException("设备在运行中，不能进行投放操作！");
            }
        }
        if (taskType.getTypeName().equals("维修工单")){
            if(vmStatus!=DkdContants.VM_STATUS_RUNNING){
                throw new ServiceException("设备不在运行中，不能进行维修操作！");
            }
        }
        if(taskType.getTypeName().equals("补货工单")){
            if(vmStatus!=DkdContants.VM_STATUS_RUNNING){
                throw new ServiceException("设备不在运行中，不能进行补货操作！");
            }
        }
        if(taskType.getTypeName().equals("撤机工单"))
        {
            if(vmStatus!=DkdContants.VM_STATUS_RUNNING){
                throw new ServiceException("设备不在运行中，不能进行撤机操作！");
            }
        }

        //3.检查设备是否有未完成的同类的工单（待处理和进行中）
        Task taskParam1=new Task();
        taskParam1.setInnerCode(taskDto.getInnerCode());
        taskParam1.setProductTypeId(taskDto.getProductTypeId());
        taskParam1.setTaskStatus(DkdContants.TASK_STATUS_PROGRESS);
        List<Task> tasks1 = taskService.selectTaskList(taskParam1);

        Task taskParam2 = BeanUtil.copyProperties(taskParam1, Task.class);
        taskParam2.setTaskStatus(DkdContants.TASK_STATUS_CREATE);
        List<Task> tasks2 = taskService.selectTaskList(taskParam2);
        if((tasks1!=null&&tasks1.size()>0)||(tasks2!=null&&tasks2.size()>0))
            throw  new ServiceException("该设备已存在待处理或未完成的工单");


        //4.查询并检验员工是否存在
        Emp emp = empServiceImpl.selectEmpById(taskDto.getUserId());
        if (emp==null)
            throw  new ServiceException("员工不存在！");

        //5.校验员工区域是否匹配
        if(!emp.getRegionId().equals(vm.getRegionId()))
            throw new ServiceException("员工区域与设备区域不一致，无法处理此工单！");


        //6.保存工单
       Task task= BeanUtil.copyProperties(taskDto,Task.class);
       task.setTaskStatus(DkdContants.TASK_STATUS_CREATE);
       task.setUserName(emp.getUserName());
       task.setRegionId(vm.getRegionId());
       task.setAddr(vm.getAddr());
       task.setCreateTime(DateUtils.getNowDate());
       task.setTaskCode(createTaskCode());

        int res = taskService.insertTask(task);

        //7.判断是否是补货工单
        if(taskDto.getProductTypeId().equals(DkdContants.TASK_TYPE_SUPPLY)){
            //8.保存工单详情
            List<TaskDetailDto> details = taskDto.getDetails();
            if(CollUtil.isEmpty(details))
                throw new ServiceException("补货工单详情不能为空！");
            //将dto转换为po(实体)
            //@@@5、map流代替foreach
           List<TaskDetails>taskDetailsList=details.stream().map(taskDetailDto -> {
               TaskDetails taskDetails = BeanUtil.copyProperties(taskDetailDto, TaskDetails.class);
               taskDetails.setTaskId(task.getTaskId());
               return  taskDetails;
           }).collect(Collectors.toList());

           //批量新增
            taskDetailsServiceImpl.insertTaskDetailsBatch(taskDetailsList);

        }
        return success("添加成功！");
    }

    /**
     * 生成并获取当天工单编号
     * @@@6、通过redis生成工单编号
     */
    private  String createTaskCode(){
        //获取当天日期并格式化为YYYYMMDD格式
        String dateStr = DateUtils.getDate().replaceAll("-", "");
        //根据日期生成redis的key
        String key="dkd.task.code."+dateStr;
        //如果key不存在
        if(!redisTemplate.hasKey(key))
        {
            //设置key初试值为1，,过期时间为1天
            redisTemplate.opsForValue().set(key,1, Duration.ofDays(1));
            //返回初始值0001
            return  dateStr+"0001";
        }
        //如果key存在，计数器+1（0002），确保字符串为4位
        return dateStr+StrUtil.padPre(redisTemplate.opsForValue().increment(key).toString(),4,'0');

    }

    /**
     * 修改工单
     */
    @PreAuthorize("@ss.hasPermi('manage:task:edit')")
    @Log(title = "工单", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Task task)
    {
        return toAjax(taskService.updateTask(task));
    }

    /**
     * 删除工单
     */
    @PreAuthorize("@ss.hasPermi('manage:task:remove')")
    @Log(title = "工单", businessType = BusinessType.DELETE)
	@DeleteMapping("/{taskIds}")
    public AjaxResult remove(@PathVariable Long[] taskIds)
    {
        return toAjax(taskService.deleteTaskByTaskIds(taskIds));
    }






}
