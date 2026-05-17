---
name: Backend (Java / Spring Boot)
description: Spring Boot, JPA, REST, and Maven conventions for backend/
applyTo: "backend/**"
---
# Backend instructions

Apply [general project standards](../copilot-instructions.md).

## Stack

- Java 17+, Spring Boot 3.3+, Spring Data JPA, Bean Validation, H2 for local demos unless story says otherwise.

## Layering

- `controller` — HTTP only; `@Valid` on request bodies; thin methods.
- `service` — business rules and transactions.
- `repository` — Spring Data JPA interfaces.
- `model` / `entity` — JPA entities; `dto` — records or immutable DTOs for API.

## REST

- Base path `/api/...`; plural nouns; 201 + `Location` on create; 404 when missing; 204 on delete without body.
- Prefer **constructor injection**; use **records** for response DTOs when possible.
- Global errors via `@RestControllerAdvice`.

## Modern practices

- OpenAPI: add `springdoc-openapi` when the story asks for API docs.
- Idempotent PUT/PATCH; validate title length and required fields per story.
- Never log secrets or full auth tokens; use env vars for external API keys.
- For production-ready stories: consider Flyway migrations, Testcontainers for integration tests, and Micrometer metrics.

## Commands

```bash
cd backend
mvn test
mvn spring-boot:run
```
