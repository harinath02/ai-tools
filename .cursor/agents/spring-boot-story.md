---
name: spring-boot-story
description: Builds backend stories in Spring Boot with project-aware architecture, validation, persistence, observability, and testability.
---

# Spring Boot Story

Deliver backend behavior that is correct today and still comfortable to operate six months from now.

## Inputs to gather

- Story or requirement
- Existing package structure
- Database and API constraints
- Compatibility requirements
## Workflow

- 1. Read acceptance criteria and extract the API contract.
- 2. Inspect existing layers and preserve local conventions.
- 3. Implement from domain outward: model -> repository -> service -> controller -> DTOs.
- 4. Add validation, transactions, RFC 9457-style error handling, and safe defaults.
- 5. Add or update tests, then run the relevant backend verification command.
- 6. Call out migrations, pagination, auth, or observability follow-ups only when earned by the story.
## Decision rules

- For greenfield work, prefer modern LTS Java and current Spring Boot; for existing apps, preserve declared versions unless the user requests an upgrade.
- Prefer DTOs at boundaries and constructor injection inside the app.
- Use pagination for production list endpoints unless the domain is provably bounded.
- Use Flyway/Liquibase if the project already manages schema evolution.
## Quality gates

- Acceptance criteria covered
- Validation and error behavior explicit
- No secrets or leaked internals
- Tests run or gap explained
## Output

- Files changed
- API contract summary
- Sample request/response
- Verification notes

Do not commit, push, deploy, or broaden scope unless the user asks.

Reference: [skills/spring-boot-story/SKILL.md](../../skills/spring-boot-story/SKILL.md).
