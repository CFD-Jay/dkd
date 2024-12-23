package com.dkd.manage.service.impl;

import java.util.List;
import com.dkd.common.utils.DateUtils;
import com.dkd.manage.domain.Vo.RegionVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dkd.manage.mapper.RegionMapper;
import com.dkd.manage.domain.Region;
import com.dkd.manage.service.IRegionService;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpSession;

/**
 * 区域管理Service业务层处理
 * 
 * @author yk
 * @date 2024-12-15
 */
@Service
public class RegionServiceImpl implements IRegionService 
{
    @Autowired
    private RegionMapper regionMapper;
    @Autowired
    private HttpSession session;
    /**
     * 查询区域管理
     * 
     * @param id 区域管理主键
     * @return 区域管理
     */
    @Override
    public Region selectRegionById(Long id)
    {
        return regionMapper.selectRegionById(id);
    }

    /**
     * 查询区域管理列表
     * 
     * @param region 区域管理
     * @return 区域管理
     */
    @Override
    public List<Region> selectRegionList(Region region)
    {
        return regionMapper.selectRegionList(region);
    }

    /**
     * 新增区域管理
     * 
     * @param region 区域管理
     * @return 结果
     */
    @Override
    public int insertRegion(Region region)
    {
        region.setCreateTime(DateUtils.getNowDate());
        region.setUpdateTime(DateUtils.getNowDate());
        region.setCreateBy((String) session.getAttribute("user"));
        region.setUpdateBy((String) session.getAttribute("user"));
        return regionMapper.insertRegion(region);
    }
    /**
     * 修改区域管理
     * 因为修改两个表，需要添加事务，同时成功或者同时失败。
     * @param region 区域管理
     * @return 结果
     */
    @Transactional(rollbackFor = Exception.class)
    @Override
    public int updateRegion(Region region)
    {

        //先根据区域id和区域名称更新员工表的区域名，确保数据同步改变
        regionMapper.updateRegionNameByRegionId(region.getId(),region.getRegionName());
        region.setUpdateTime(DateUtils.getNowDate());
        //更改区域表
        return regionMapper.updateRegion(region);
    }

    /**
     * 批量删除区域管理
     * 
     * @param ids 需要删除的区域管理主键
     * @return 结果
     */
    @Override
    public int deleteRegionByIds(Long[] ids)
    {
        return regionMapper.deleteRegionByIds(ids);
    }

    /**
     * 删除区域管理信息
     * 
     * @param id 区域管理主键
     * @return 结果
     */
    @Override
    public int deleteRegionById(Long id)
    {
        return regionMapper.deleteRegionById(id);
    }

    @Override
    public List<RegionVo> selectRegionVoList(Region region) {
        return regionMapper.selectRegionVoList(region);
    }
}
