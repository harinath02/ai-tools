---
name: Backend (Java / Spring Boot)
description: Spring Boot, JPA, REST, observability, and migration conventions for backend/
applyTo: "backend/**"
---
# Backend instructions

Apply the shared standards first.

## Stack policy

- For greenfield work, prefer a modern LTS Java line and current Spring Boot when project constraints allow it.
- For existing apps, preserve the declared Java / Spring Boot versions unless the user requests an upgrade.

## Layering

- `controller` - HTTP and validation only.
- `service` - business rules and transaction boundaries.
- `repository` - persistence interfaces.
- `model` / `entity` - persistence model; `dto` - API boundary types.

## REST

- Use plural resources, meaningful status codes, pagination for production lists, and RFC 9457-style error responses.
- Prefer constructor injection and immutable boundary DTOs.
- Do not expose internal entities or stack traces as public contracts.

## Data and ops

- Use Flyway/Liquibase when the project manages persistent schemas.
- Add Actuator/Micrometer/OpenTelemetry-compatible signals when the story changes critical flows.
- Never log secrets or full auth material.

## Commands

```bash
cd backend
mvn test
mvn spring-boot:run
```
