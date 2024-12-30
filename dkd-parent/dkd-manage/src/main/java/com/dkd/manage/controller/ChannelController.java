package com.dkd.manage.controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.dkd.common.utils.DateUtils;
import com.dkd.manage.domain.Dto.ChannelConfigDto;
import com.dkd.manage.domain.Vo.ChannelVo;
import com.dkd.manage.service.impl.ChannelServiceImpl;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.dkd.common.annotation.Log;
import com.dkd.common.core.controller.BaseController;
import com.dkd.common.core.domain.AjaxResult;
import com.dkd.common.enums.BusinessType;
import com.dkd.manage.domain.Channel;
import com.dkd.manage.service.IChannelService;
import com.dkd.common.utils.poi.ExcelUtil;
import com.dkd.common.core.page.TableDataInfo;

/**
 * 售货机货道Controller
 * 
 * @author yk
 * @date 2024-12-22
 */
@RestController
@RequestMapping("/manage/channel")
public class ChannelController extends BaseController
{
    @Autowired
    private IChannelService channelService;
    @Autowired
    private ChannelServiceImpl channelServiceImpl;

    /**
     * 查询售货机货道列表
     */
    @PreAuthorize("@ss.hasPermi('manage:channel:list')")
    @GetMapping("/list")
    public TableDataInfo list(Channel channel)
    {
        startPage();
        List<Channel> list = channelService.selectChannelList(channel);
        return getDataTable(list);
    }

    /**
     * 导出售货机货道列表
     */
    @PreAuthorize("@ss.hasPermi('manage:channel:export')")
    @Log(title = "售货机货道", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Channel channel)
    {
        List<Channel> list = channelService.selectChannelList(channel);
        ExcelUtil<Channel> util = new ExcelUtil<Channel>(Channel.class);
        util.exportExcel(response, list, "售货机货道数据");
    }

    /**
     * 获取售货机货道详细信息
     */
    @PreAuthorize("@ss.hasPermi('manage:channel:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(channelService.selectChannelById(id));
    }

    /**
     * 新增售货机货道
     */
    @PreAuthorize("@ss.hasPermi('manage:channel:add')")
    @Log(title = "售货机货道", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Channel channel)
    {
        return toAjax(channelService.insertChannel(channel));
    }

    /**
     * 修改售货机货道
     */
    @PreAuthorize("@ss.hasPermi('manage:channel:edit')")
    @Log(title = "售货机货道", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Channel channel)
    {
        return toAjax(channelService.updateChannel(channel));
    }

    /**
     * 删除售货机货道
     */
    @PreAuthorize("@ss.hasPermi('manage:channel:remove')")
    @Log(title = "售货机货道", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(channelService.deleteChannelByIds(ids));
    }

    /**
     * 根据售货机编号查询货道信息和商品信息
     */
    @GetMapping("/list/{innerCode}")
    @PreAuthorize("@ss.hasPermi('manage:channel:list')")
    //@Log(title = "售货机货道", businessType = BusinessType.DELETE)
    public AjaxResult getInfoByInnerCode(@PathVariable("innerCode") String innerCode)
    {
        List<ChannelVo> channelVos = channelService.selectChannelVoListByInnerCode(innerCode);

        return  success(channelVos);
    }

    /**
     * 货道新增商品信息
     */
    @PutMapping("/config")
    @PreAuthorize("@ss.hasPermi('manage:channel:add')")
    @Log(title = "售货机货道", businessType = BusinessType.INSERT)
    public AjaxResult config(@RequestBody ChannelConfigDto channels)
    {

        //判断哪些是真正修改了skuId的,再更改其update_time
        List<Channel> newList = channels.getChannelList();
        List<Channel> orginList = channelService.selectByInnerCode(channels.getInnerCode());
        List<Channel> changeList=new ArrayList<>();
        for(int i=0;i<newList.size();i++)
           {
               Channel newOne=newList.get(i);   Channel orginOne=orginList.get(i);
               if(!newList.get(i).getSkuId().equals(orginOne.getSkuId()))
               {
                   newOne.setUpdateTime(DateUtils.getNowDate());
                   changeList.add(newOne);
               }

           }
        if(changeList.size()>0)
           channelService.updateChannelMessage(changeList);

        return  success("修改成功！");
    }
}
