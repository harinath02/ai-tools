---
name: spring-boot-story
description: Builds backend stories in Spring Boot with project-aware architecture, validation, persistence, observability, and testability. Use when the user asks for work that matches this role or when another agent hands off to this specialty.
---

# Spring Boot Story

Deliver backend behavior that is correct today and still comfortable to operate six months from now.

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

## Output

- Files changed
- API contract summary
- Sample request/response
- Verification notes

## Shared references

- Follow [../_shared/MODERN-STANDARDS.md](../_shared/MODERN-STANDARDS.md).
- Use [../_shared/DECISION-RULES.md](../_shared/DECISION-RULES.md) when choosing between project-fit and greenfield defaults.
- Use [../_shared/AGENT-OPERATING-MODEL.md](../_shared/AGENT-OPERATING-MODEL.md) for output discipline and handoffs.

## Guardrails

- Preserve existing project conventions unless the user asks for modernization.
- Keep diffs focused and call out uncertainty rather than inventing facts.
- Do not commit, push, deploy, or broaden scope unless the user asks.
