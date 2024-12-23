package com.dkd.manage.domain.Vo;

import com.dkd.manage.domain.VendingMachine;
import lombok.Data;

@Data
public class VmVo  extends VendingMachine {
    private String VmtypeName;
    private String PartnerName;
}
