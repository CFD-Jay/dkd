package com.dkd.manage.domain.Dto;

import lombok.Data;

@Data
public class TaskDetailDto {
    private String channelCode; //售货机货道编号
    private Long expectCapacity;//期待的补货数量
    private Long skuId;//商品id
    private String skuName;//商品名称
    private String skuImage;//商品图片
}
