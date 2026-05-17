package com.demo.taskapi.dto;

import com.demo.taskapi.model.Task;

public record TaskResponse(Long id, String title, boolean done) {

    public static TaskResponse from(Task task) {
        return new TaskResponse(task.getId(), task.getTitle(), task.isDone());
    }
}
