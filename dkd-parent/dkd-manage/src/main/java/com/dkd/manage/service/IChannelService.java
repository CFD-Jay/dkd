package com.dkd.manage.service;

import java.util.List;
import com.dkd.manage.domain.Channel;
import com.dkd.manage.domain.Vo.ChannelVo;

/**
 * 售货机货道Service接口
 * 
 * @author yk
 * @date 2024-12-22
 */
public interface IChannelService 
{
    /**
     * 查询售货机货道
     * 
     * @param id 售货机货道主键
     * @return 售货机货道
     */
    public Channel selectChannelById(Long id);

    /**
     * 查询售货机货道列表
     * 
     * @param channel 售货机货道
     * @return 售货机货道集合
     */
    public List<Channel> selectChannelList(Channel channel);

    /**
     * 新增售货机货道
     * 
     * @param channel 售货机货道
     * @return 结果
     */
    public int insertChannel(Channel channel);

    /**
     * 修改售货机货道
     * 
     * @param channel 售货机货道
     * @return 结果
     */
    public int updateChannel(Channel channel);

    /**
     * 批量删除售货机货道
     * 
     * @param ids 需要删除的售货机货道主键集合
     * @return 结果
     */
    public int deleteChannelByIds(Long[] ids);

    /**
     * 删除售货机货道信息
     * 
     * @param id 售货机货道主键
     * @return 结果
     */
    public int deleteChannelById(Long id);
    int insertChannelBatch(List<Channel> channels);
    Channel selectBySkuId(Long skuId);

    int selectBySkuIds(Long[] skuId);

    /**
     * 嵌套查询
     * @param innerCode
     * @return
     */
    List<ChannelVo> selectChannelVoListByInnerCode(String innerCode);
    List<Channel> selectByInnerCode(String innerCode);

    int updateChannelMessage(List<Channel> channels);
}
