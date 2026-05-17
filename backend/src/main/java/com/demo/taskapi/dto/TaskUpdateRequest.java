package com.demo.taskapi.dto;

import jakarta.validation.constraints.Size;

public record TaskUpdateRequest(
        @Size(min = 1, max = 200, message = "title must be between 1 and 200 characters")
        String title,
        Boolean done
) {
}
