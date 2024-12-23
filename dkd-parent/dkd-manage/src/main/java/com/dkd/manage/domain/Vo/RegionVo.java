package com.dkd.manage.domain.Vo;

import com.dkd.manage.domain.Region;
import lombok.Data;

@Data
public class RegionVo extends Region {
    //一个区域的点位数量
    private String NodeCount;
}
