package com.dkd.manage.controller;

import com.dkd.common.core.domain.R;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
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
import com.dkd.manage.domain.TaskDetails;
import com.dkd.manage.service.ITaskDetailsService;
import com.dkd.common.utils.poi.ExcelUtil;
import com.dkd.common.core.page.TableDataInfo;

/**
 * 工单详情Controller
 * @author ruoyi
 * @date 2024-12-29
 */
///@@@7、swagger注解（需要导入maven）@Api @ApiOperation、@ApiParam都是与前端界面显示相关的注解，对比着一看就知道啥意思。swagger配置类是在Admin模块中。特别注意，当查看
///返回体的信息时（比如查看工单补货详情），不能将返回值设置为AjaxResult，也就是不能使用BaseEntity类自带的return success(),而要将返回值设置为R<T>并设置为return R.ok().具体原因看视频讲解。 前端界面的参数说明信息需要额外在TaskDetails实体类中添加额外注解，可以使用ai辅助注解。
///

@Api(value = "工单详情管理", tags = "工单详情管理")
@RestController
@RequestMapping("/manage/task_details")
public class TaskDetailsController extends BaseController {
    @Autowired
    private ITaskDetailsService taskDetailsService;

    /**
     * 查询工单详情列表
     */
    @ApiOperation(value = "查询工单详情列表", notes = "查询工单详情列表")
    @PreAuthorize("@ss.hasPermi('manage:task_details:list')")
    @GetMapping("/list")
    public TableDataInfo list(TaskDetails taskDetails) {
        startPage();
        List<TaskDetails> list = taskDetailsService.selectTaskDetailsList(taskDetails);
        return getDataTable(list);
    }

    /**
     * 导出工单详情列表
     */
    @ApiOperation(value = "导出工单详情列表", notes = "导出工单详情列表")
    @PreAuthorize("@ss.hasPermi('manage:task_details:export')")
    @Log(title = "工单详情", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TaskDetails taskDetails) {
        List<TaskDetails> list = taskDetailsService.selectTaskDetailsList(taskDetails);
        ExcelUtil<TaskDetails> util = new ExcelUtil<TaskDetails>(TaskDetails.class);
        util.exportExcel(response, list, "工单详情数据");
    }

    /**
     * 获取工单详情详细信息
     */
    @ApiOperation(value = "获取工单详情详细信息", notes = "根据工单详情ID获取详细信息")
    @PreAuthorize("@ss.hasPermi('manage:task_details:query')")
    @GetMapping(value = "/{detailsId}")
    public AjaxResult getInfo(@ApiParam(value = "工单详情ID", required = true) @PathVariable("detailsId") Long detailsId) {
        return success(taskDetailsService.selectTaskDetailsByDetailsId(detailsId));
    }

    /**
     * 新增工单详情
     */
    @ApiOperation(value = "新增工单详情", notes = "新增工单详情")
    @PreAuthorize("@ss.hasPermi('manage:task_details:add')")
    @Log(title = "工单详情", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@ApiParam(value = "工单详情对象", required = true) @RequestBody TaskDetails taskDetails) {
        return toAjax(taskDetailsService.insertTaskDetails(taskDetails));
    }

    /**
     * 修改工单详情
     */
    @ApiOperation(value = "修改工单详情", notes = "修改工单详情")
    @PreAuthorize("@ss.hasPermi('manage:task_details:edit')")
    @Log(title = "工单详情", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@ApiParam(value = "工单详情对象", required = true) @RequestBody TaskDetails taskDetails) {
        return toAjax(taskDetailsService.updateTaskDetails(taskDetails));
    }

    /**
     * 删除工单详情
     */
    @ApiOperation(value = "删除工单详情", notes = "根据工单详情ID数组删除工单详情")
    @PreAuthorize("@ss.hasPermi('manage:task_details:remove')")
    @Log(title = "工单详情", businessType = BusinessType.DELETE)
    @DeleteMapping("/{detailsIds}")
    public AjaxResult remove(@ApiParam(value = "工单详情ID数组", required = true) @PathVariable Long[] detailsIds) {
        return toAjax(taskDetailsService.deleteTaskDetailsByDetailsIds(detailsIds));
    }

    /**
     * 查看工单补货详情
     */
    @ApiOperation(value = "查看工单补货详情", notes = "根据工单ID查看工单补货详情")
    @PreAuthorize("@ss.hasPermi('manage:task_details:query')")
    @GetMapping("/byTaskId/{taskID}")
    public R<List<TaskDetails>> getInfoByTaskId(@ApiParam(value = "工单ID", required = true) @PathVariable("taskID") Long taskID) {
        TaskDetails taskDetails = new TaskDetails();
        taskDetails.setTaskId(taskID);
        return R.ok(taskDetailsService.selectTaskDetailsList(taskDetails));
    }
}
