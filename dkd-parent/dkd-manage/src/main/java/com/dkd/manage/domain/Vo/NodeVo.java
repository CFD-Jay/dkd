package com.dkd.manage.domain.Vo;

import com.dkd.manage.domain.Node;
import com.dkd.manage.domain.Partner;
import com.dkd.manage.domain.Region;
import lombok.Data;

@Data
public class NodeVo extends Node {
    private Region region;
    private Partner partner;
    private String vmCount;
}
