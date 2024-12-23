package com.dkd.manage.service.impl;

import java.util.List;

import com.dkd.common.core.redis.RedisCache;
import com.dkd.common.utils.DateUtils;
import com.dkd.common.utils.SecurityUtils;
import com.dkd.common.utils.sign.Md5Utils;
import com.dkd.manage.domain.Vo.PartnerVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dkd.manage.mapper.PartnerMapper;
import com.dkd.manage.domain.Partner;
import com.dkd.manage.service.IPartnerService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 合作商管理Service业务层处理
 * 
 * @author yk
 * @date 2024-12-15
 */
@Service
public class PartnerServiceImpl implements IPartnerService 
{
    @Autowired
    private PartnerMapper partnerMapper;
    @Autowired
    private RedisCache redisCache;

    @Autowired
    private HttpSession session;
    /**
     * 查询合作商管理
     * 
     * @param id 合作商管理主键
     * @return 合作商管理
     */
    @Override
    public Partner selectPartnerById(Long id)
    {
        return partnerMapper.selectPartnerById(id);
    }

    /**
     * 查询合作商管理列表
     * 
     * @param partner 合作商管理
     * @return 合作商管理
     */
    @Override
    public List<Partner> selectPartnerList(Partner partner)
    {
        return partnerMapper.selectPartnerList(partner);
    }

    /**
     * 新增合作商管理
     * 
     * @param partner 合作商管理
     * @return 结果
     */
    @Override
    public int insertPartner(Partner partner)
    {
        //使用spring security进行密码加密。
        partner.setPassword(SecurityUtils.encryptPassword(partner.getPassword()));
        partner.setCreateTime(DateUtils.getNowDate());
        partner.setUpdateTime(DateUtils.getNowDate());
        partner.setCreateBy((String)session.getAttribute("user"));
        partner.setUpdateBy((String)session.getAttribute("user"));
        return partnerMapper.insertPartner(partner);
    }

    /**
     * 修改合作商管理
     * 
     * @param partner 合作商管理
     * @return 结果
     */
    @Override
    public int updatePartner(Partner partner)
    {
        partner.setUpdateTime(DateUtils.getNowDate());
        return partnerMapper.updatePartner(partner);
    }

    /**
     * 批量删除合作商管理
     * 
     * @param ids 需要删除的合作商管理主键
     * @return 结果
     */
    @Override
    public int deletePartnerByIds(Long[] ids)
    {
        return partnerMapper.deletePartnerByIds(ids);
    }

    /**
     * 删除合作商管理信息
     * 
     * @param id 合作商管理主键
     * @return 结果
     */
    @Override
    public int deletePartnerById(Long id)
    {
        return partnerMapper.deletePartnerById(id);
    }

    @Override
    public List<PartnerVo> selectPartnerVoList(Partner partner) {
        return partnerMapper.selectPartnerVoList(partner);
    }

    @Override
    public Integer resetPassword(@Param("password") String password, @Param("id") Integer id) {
        return  partnerMapper.resetPassword(password,id);
    }
}
