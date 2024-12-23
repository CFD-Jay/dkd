package com.dkd.manage.mapper;

import java.util.List;
import com.dkd.manage.domain.Region;
import com.dkd.manage.domain.Vo.RegionVo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

/**
 * 区域管理Mapper接口
 * 
 * @author yk
 * @date 2024-12-15
 */
public interface RegionMapper 
{
    /**
     * 查询区域管理
     * 
     * @param id 区域管理主键
     * @return 区域管理
     */
    public Region selectRegionById(Long id);

    /**
     * 查询区域管理列表
     * 
     * @param region 区域管理
     * @return 区域管理集合
     */
    public List<Region> selectRegionList(Region region);

    /**
     * 新增区域管理
     * 
     * @param region 区域管理
     * @return 结果
     */
    public int insertRegion(Region region);

    /**
     * 修改区域管理
     * 
     * @param region 区域管理
     * @return 结果
     */
    public int updateRegion(Region region);

    /**
     * 删除区域管理
     * 
     * @param id 区域管理主键
     * @return 结果
     */
    public int deleteRegionById(Long id);

    /**
     * 批量删除区域管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteRegionByIds(Long[] ids);

    /**
     * 查询区域列表
     *
     * @param region 区域管理
     * @return 区域管理集合
     */
    public List<RegionVo> selectRegionVoList(Region region);

    @Update(" update tb_emp set region_name = #{regionName} where region_id = #{id}")
    public int updateRegionNameByRegionId(@Param("id") Long regionId,@Param("regionName")String regionName);
}
