package com.dkd.manage.controller;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dkd.common.utils.DateUtils;
import com.dkd.common.utils.uuid.UUIDUtils;
import com.dkd.manage.domain.Channel;
import com.dkd.manage.domain.Node;
import com.dkd.manage.domain.VmType;
import com.dkd.manage.domain.Vo.VmVo;
import com.dkd.manage.service.IChannelService;
import com.dkd.manage.service.IPartnerService;
import com.dkd.manage.service.IVmTypeService;
import com.dkd.manage.service.impl.NodeServiceImpl;
import org.springframework.beans.BeanUtils;
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
import com.dkd.manage.domain.VendingMachine;
import com.dkd.manage.service.IVendingMachineService;
import com.dkd.common.utils.poi.ExcelUtil;
import com.dkd.common.core.page.TableDataInfo;

/**
 * 设备管理Controller
 * 
 * @author yk
 * @date 2024-12-22
 */
@RestController
@RequestMapping("/manage/vm")
public class VendingMachineController extends BaseController
{
    @Autowired
    private IVendingMachineService vendingMachineService;
    @Autowired
    private IVmTypeService vmTypeService;
    @Autowired
    private IPartnerService partnerService;
    @Autowired
    private IChannelService channelService;
    @Autowired
    private NodeServiceImpl nodeServiceImpl;
    @Autowired
    HttpSession session;
    /**
     * //@@@
     * 查询设备管理列表
     * 面对前端数据和后端数据不完全匹配情况有三种解决方式
     * 1、在controller层调用mapper
     * 2、多表联合查询（node的controller)
     * 3、在前段实现数据字典，如在vm/index.vue文件添加
     *      <el-table-column label="设备型号" align="center" prop="vmtypeName" >
     *         <template #default="scope">
     *           <div
     *           v-for="item in vmTypeList" :key="item.id">
     *           <span v-if="item.id == scope.row.vmTypeId">{{item.name}}</span>
     *         </div>
     *         </template>
     *       </el-table-column>
     *
     *       <el-table-column label="合作商" align="center" prop="partnerName" >
     *         <template #default="scope">
     *           <div
     *           v-for="item in partnerList" :key="item.id">
     *           <span v-if="item.id == scope.row.partnerId">{{item.partnerName}}</span>
     *         </div>
     *         </template>
     *
     *
     *
     */
    @PreAuthorize("@ss.hasPermi('manage:vm:list')")
    @GetMapping("/list")
    public TableDataInfo list(VendingMachine vendingMachine)
    {
        startPage();
        List<VendingMachine> list = vendingMachineService.selectVendingMachineList(vendingMachine);
     //   System.out.println(list.size());
        List<VmVo>list1=new ArrayList<>();
        for (VendingMachine item:list){
            VmVo vo=new VmVo();
            Long vmTypeId = item.getVmTypeId();
            Long partnerId = item.getPartnerId();
            BeanUtils.copyProperties(item,vo);
            vo.setVmtypeName(vmTypeService.selectVmTypeById(vmTypeId).getName());
            vo.setPartnerName(partnerService.selectPartnerById(partnerId).getPartnerName());
            list1.add(vo);
        }

    //    System.out.println(list1.size());

        return getDataTable(list);
    }

    /**
     * 导出设备管理列表
     */
    @PreAuthorize("@ss.hasPermi('manage:vm:export')")
    @Log(title = "设备管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, VendingMachine vendingMachine)
    {
        List<VendingMachine> list = vendingMachineService.selectVendingMachineList(vendingMachine);
        ExcelUtil<VendingMachine> util = new ExcelUtil<VendingMachine>(VendingMachine.class);
        util.exportExcel(response, list, "设备管理数据");
    }

    /**
     * 获取设备管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('manage:vm:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(vendingMachineService.selectVendingMachineById(id));
    }

    /**
     * @@@涉及到多表操作需要添加事务
     * 新增设备管理
     * 根据前端传来的nodeId,vmtypeId查询其他表补全设备信息
     */
    @Transactional
    @PreAuthorize("@ss.hasPermi('manage:vm:add')")
    @Log(title = "设备管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody VendingMachine vendingMachine)
    {
        //1.生成随机设备编号
        String innerCode = UUIDUtils.getUUID();
        //2.设备容量
        Long max_capacity =vmTypeService.selectVmTypeById(vendingMachine.getVmTypeId()).getChannelMaxCapacity();
        //3.详细地址、商圈类型、区域id、合作商id
        Node node=nodeServiceImpl.selectNodeById(vendingMachine.getNodeId());
        String address=node.getAddressDetail();
        Long businessType=node.getBusinessCircleType();
        Long regionId = node.getRegionId();
        Long partnerId = node.getPartnerId();



        //生成完全信息的实体对象

        VendingMachine res=new VendingMachine();
        BeanUtils.copyProperties(vendingMachine,res);
        res.setUpdateTime(DateUtils.getNowDate()); res.setCreateBy((String) session.getAttribute("user"));
        res.setCreateTime(DateUtils.getNowDate());
        res.setInnerCode(innerCode);res.setChannelMaxCapacity(max_capacity);
        res.setAddr(address);res.setBusinessType(businessType);res.setRegionId(regionId);
        res.setPartnerId(partnerId);

        int i = vendingMachineService.insertVendingMachine(res);

        VmType vmType = vmTypeService.selectVmTypeById(vendingMachine.getVmTypeId());
        Long vmCol = vmType.getVmCol();Long vmRow = vmType.getVmRow();
        List<Channel>channels=new ArrayList<>();
        for(int j=1;j<=vmRow;j++)
            for(int k=1;k<=vmCol;k++)
            {
                Channel channel=new Channel();
                channel.setChannelCode(String.valueOf(j)+"-"+String.valueOf((k)));
                channel.setMaxCapacity(max_capacity);
                channel.setVmId(res.getId());
                channel.setInnerCode(innerCode);
                channel.setCreateTime(DateUtils.getNowDate());
               channels.add(channel);

            }

        //@@@sqp批量插入
        channelService.insertChannelBatch(channels);
        return toAjax(i);
    }

    /**
     * 修改设备管理
     */
    @PreAuthorize("@ss.hasPermi('manage:vm:edit')")
    @Log(title = "设备管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody VendingMachine vendingMachine)
    {
        return toAjax(vendingMachineService.updateVendingMachine(vendingMachine));
    }

    /**
     * 删除设备管理
     */
    @PreAuthorize("@ss.hasPermi('manage:vm:remove')")
    @Log(title = "设备管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(vendingMachineService.deleteVendingMachineByIds(ids));
    }
}
