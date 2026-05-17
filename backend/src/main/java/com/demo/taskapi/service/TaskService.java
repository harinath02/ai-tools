package com.demo.taskapi.service;

import com.demo.taskapi.dto.TaskRequest;
import com.demo.taskapi.dto.TaskResponse;
import com.demo.taskapi.dto.TaskUpdateRequest;
import com.demo.taskapi.exception.ResourceNotFoundException;
import com.demo.taskapi.model.Task;
import com.demo.taskapi.repository.TaskRepository;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class TaskService {

    private final TaskRepository taskRepository;

    public TaskService(TaskRepository taskRepository) {
        this.taskRepository = taskRepository;
    }

    @Transactional(readOnly = true)
    public List<TaskResponse> findAll() {
        return taskRepository.findAll().stream()
                .map(TaskResponse::from)
                .toList();
    }

    @Transactional(readOnly = true)
    public TaskResponse findById(Long id) {
        return TaskResponse.from(getTaskOrThrow(id));
    }

    public TaskResponse create(TaskRequest request) {
        boolean done = request.done() != null && request.done();
        Task task = taskRepository.save(new Task(request.title(), done));
        return TaskResponse.from(task);
    }

    public TaskResponse update(Long id, TaskUpdateRequest request) {
        Task task = getTaskOrThrow(id);
        if (request.title() != null) {
            task.setTitle(request.title());
        }
        if (request.done() != null) {
            task.setDone(request.done());
        }
        return TaskResponse.from(task);
    }

    public void delete(Long id) {
        Task task = getTaskOrThrow(id);
        taskRepository.delete(task);
    }

    private Task getTaskOrThrow(Long id) {
        return taskRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Task not found: " + id));
    }
}
