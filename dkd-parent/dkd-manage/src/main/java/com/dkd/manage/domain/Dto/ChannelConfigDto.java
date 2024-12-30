package com.dkd.manage.domain.Dto;

import com.dkd.common.core.domain.BaseEntity;
import com.dkd.manage.domain.Channel;
import lombok.Data;

import java.util.List;

@Data
public class ChannelConfigDto extends BaseEntity {
    private String innerCode;
    private List<Channel> channelList;
    private Long orginSkuId;
}
