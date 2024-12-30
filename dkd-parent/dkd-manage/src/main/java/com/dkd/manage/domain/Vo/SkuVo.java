package com.dkd.manage.domain.Vo;

import com.dkd.manage.domain.Sku;
import lombok.Data;

@Data
public class SkuVo extends Sku {
    private String className;
    private String createBy;
}
