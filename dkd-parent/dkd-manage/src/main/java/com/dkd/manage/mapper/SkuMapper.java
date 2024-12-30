package com.dkd.manage.mapper;

import java.util.List;
import com.dkd.manage.domain.Sku;
import com.dkd.manage.domain.Vo.SkuVo;
import org.apache.ibatis.annotations.Param;

/**
 * 商品管理Mapper接口
 * 
 * @author yk
 * @date 2024-12-26
 */
public interface SkuMapper 
{
    /**
     * 查询商品管理
     * 
     * @param skuId 商品管理主键
     * @return 商品管理
     */
    public Sku selectSkuBySkuId(Long skuId);

    /**
     * 查询商品管理列表
     * 
     * @param sku 商品管理
     * @return 商品管理集合
     */
    public List<Sku> selectSkuList(Sku sku);

    /**
     * 新增商品管理
     * 
     * @param sku 商品管理
     * @return 结果
     */
    public int insertSku(Sku sku);

    /**
     * 修改商品管理
     * 
     * @param sku 商品管理
     * @return 结果
     */
    public int updateSku(Sku sku);

    /**
     * 删除商品管理
     * 
     * @param skuId 商品管理主键
     * @return 结果
     */
    public int deleteSkuBySkuId(Long skuId);

    /**
     * 批量删除商品管理
     * 
     * @param skuIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSkuBySkuIds(Long[] skuIds);

    public List<SkuVo> selectSkuVoList(Sku sku);

    public  int insertSkus(List<Sku> list);
    public List<Sku> selectSkuListBySkuIds(Long[] ids);
}