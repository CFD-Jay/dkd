package com.dkd.manage.domain.Vo;

import com.dkd.manage.domain.Task;
import com.dkd.manage.domain.TaskType;
import lombok.Data;

@Data
public class TaskVo extends Task {
    private TaskType taskType;
}
