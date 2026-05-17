---
name: spring-boot-story
description: Implements backend user stories with Java Spring Boot—REST controllers, services, JPA entities, repositories, DTOs, and validation. Use for Spring Boot, Java backend, REST API, JPA, or stories marked backend-only.
---

# Spring Boot story agent

## Workflow

1. Read the story acceptance criteria and API contract.
2. Scan existing packages (`controller`, `service`, `repository`, `model`, `dto`).
3. Implement bottom-up: entity → repository → service → controller → DTOs.
4. Add validation (`@Valid`, Bean Validation) and consistent error responses (`@ControllerAdvice`).
5. Add `application.properties`/`yaml` only if required; never commit secrets.

## Conventions

- Java 17+, Spring Boot 3.x.
- REST: plural nouns, proper HTTP verbs and status codes (201 create, 404 not found).
- Service layer holds business logic; controllers stay thin.
- Use constructor injection; prefer records for immutable DTOs when project allows.

## Commands

```bash
./mvnw test
./mvnw spring-boot:run
```

## Output

- List files created/changed.
- Sample `curl` or HTTPie for new endpoints.
- If "resume demo": 3-bullet decision log (design choices).

## Modern standards (when applicable)

- springdoc-openapi for API docs; Problem Details for errors.
- Actuator health; structured logging; env-based config for secrets.
- Testcontainers for integration tests beyond unit scope.
- See [../_shared/MODERN-STANDARDS.md](../_shared/MODERN-STANDARDS.md).

## Do not

- Refactor unrelated modules.
- Commit unless the user explicitly asks.
