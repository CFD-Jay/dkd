package com.dkd.manage.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.dkd.common.annotation.Excel;
import com.dkd.common.core.domain.BaseEntity;

/**
 * 点位管理对象 tb_node
 * 
 * @author yk
 * @date 2024-12-15
 */
public class Node extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 点位名称 */
    @Excel(name = "点位名称")
    private String nodeName;

    /** 详细地址 */
    @Excel(name = "详细地址")
    private String addressDetail;

    /** 商圈类型, 例如: 1-商业区, 2-居民区, 3-办公区等 */
    @Excel(name = "商圈类型, 例如: 1-商业区, 2-居民区, 3-办公区等")
    private Long businessCircleType;

    /** 所属区域ID */
    @Excel(name = "所属区域ID")
    private Long regionId;

    /** 关联的合作商ID */
    @Excel(name = "关联的合作商ID")
    private Long partnerId;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setNodeName(String nodeName) 
    {
        this.nodeName = nodeName;
    }

    public String getNodeName() 
    {
        return nodeName;
    }
    public void setAddressDetail(String addressDetail) 
    {
        this.addressDetail = addressDetail;
    }

    public String getAddressDetail() 
    {
        return addressDetail;
    }
    public void setBusinessCircleType(Long businessCircleType) 
    {
        this.businessCircleType = businessCircleType;
    }

    public Long getBusinessCircleType() 
    {
        return businessCircleType;
    }
    public void setRegionId(Long regionId) 
    {
        this.regionId = regionId;
    }

    public Long getRegionId() 
    {
        return regionId;
    }
    public void setPartnerId(Long partnerId) 
    {
        this.partnerId = partnerId;
    }

    public Long getPartnerId() 
    {
        return partnerId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("nodeName", getNodeName())
            .append("addressDetail", getAddressDetail())
            .append("businessCircleType", getBusinessCircleType())
            .append("regionId", getRegionId())
            .append("partnerId", getPartnerId())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .append("createBy", getCreateBy())
            .append("updateBy", getUpdateBy())
            .append("remark", getRemark())
            .toString();
    }
}
