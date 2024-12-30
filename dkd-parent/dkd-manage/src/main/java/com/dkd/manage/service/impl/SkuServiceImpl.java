package com.dkd.manage.service.impl;

import java.util.List;

import com.dkd.common.exception.ServiceException;
import com.dkd.common.utils.DateUtils;
import com.dkd.manage.domain.Channel;
import com.dkd.manage.domain.Vo.SkuVo;
import com.dkd.manage.mapper.ChannelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dkd.manage.mapper.SkuMapper;
import com.dkd.manage.domain.Sku;
import com.dkd.manage.service.ISkuService;

import javax.sql.rowset.serial.SerialException;

/**
 * 商品管理Service业务层处理
 * 
 * @author yk
 * @date 2024-12-26
 */
@Service
public class SkuServiceImpl implements ISkuService 
{
    @Autowired
    private SkuMapper skuMapper;
    @Autowired
    private ChannelMapper channelMapper;
    /**
     * 查询商品管理
     * 
     * @param skuId 商品管理主键
     * @return 商品管理
     */
    @Override
    public Sku selectSkuBySkuId(Long skuId)
    {
        return skuMapper.selectSkuBySkuId(skuId);
    }

    /**
     * 查询商品管理列表
     * 
     * @param sku 商品管理
     * @return 商品管理
     */
    @Override
    public List<Sku> selectSkuList(Sku sku)
    {
        return skuMapper.selectSkuList(sku);
    }

    /**
     * 新增商品管理
     * 
     * @param sku 商品管理
     * @return 结果
     */
    @Override
    public int insertSku(Sku sku)
    {
        sku.setCreateTime(DateUtils.getNowDate());
        return skuMapper.insertSku(sku);
    }

    /**
     * 修改商品管理
     * 
     * @param sku 商品管理
     * @return 结果
     */
    @Override
    public int updateSku(Sku sku)
    {
        sku.setUpdateTime(DateUtils.getNowDate());
        return skuMapper.updateSku(sku);
    }

    /**
     * 批量删除商品管理
     * 
     * @param skuIds 需要删除的商品管理主键
     * @return 结果
     */
    @Override
    public int deleteSkuBySkuIds(Long[] skuIds)
    {
        int res=channelMapper.selectBySkuIds(skuIds);
        if(res!=0)
            //@@@若依框架的异常处理
            throw new ServiceException("某些商品存在于货道中，无法直接删除");
        else
        return skuMapper.deleteSkuBySkuIds(skuIds);
    }

    /**
     * 删除商品管理信息
     * 
     * @param skuId 商品管理主键
     * @return 结果
     */
    @Override
    public int deleteSkuBySkuId(Long skuId) throws SerialException {

        return skuMapper.deleteSkuBySkuId(skuId);
    }

    @Override
    public List<SkuVo> selectSkuVoList(Sku sku) {
        return skuMapper.selectSkuVoList(sku);
    }

    @Override
    public int insertSkus(List<Sku> list) {
        return skuMapper.insertSkus(list);
    }

    @Override
    public List<Sku> selectSkuListBySkuIds(Long[] ids) {
        return skuMapper.selectSkuListBySkuIds(ids);
    }
}
