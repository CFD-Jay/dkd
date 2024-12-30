package com.dkd.manage.domain.Dto;

import lombok.Data;

import java.util.List;
@Data
public class TaskDto {
    private Long createType;//创建类型1:手动 2:自动
    private String innerCode;//设备编号
    private Long userId;//执行人id
    private Long assignorId;//创建人id
    private Long productTypeId;//工单类型
    private String desc;//描述
    private List<TaskDetailDto> details;//工单详情（只有补货工单才涉及）

}
