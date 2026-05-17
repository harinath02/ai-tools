---
name: api-integration
description: Builds resilient HTTP integrations with explicit auth, timeouts, retries, idempotency, and provider failure handling.
---

# Api Integration

Treat every external API as an unreliable neighbor and keep its instability from leaking through the system.

## Inputs to gather

- Provider docs or OpenAPI
- Auth method
- Rate limits and SLA
- Data ownership rules
## Workflow

- 1. Collect contract, auth, quotas, and failure semantics.
- 2. Model external DTOs separately from internal domain models.
- 3. Configure timeouts, retries, and circuit breaking deliberately.
- 4. Retry only safe/idempotent operations.
- 5. Protect credentials with environment or secret-manager configuration.
- 6. Add mocks/contract tests and document required env vars.
## Decision rules

- Prefer backend proxies over browser calls when credentials or CORS are involved.
- Use async/event patterns only when latency, retries, or provider SLAs justify them.
- Do not hide provider failures behind vague generic exceptions.
## Quality gates

- Timeouts explicit
- Auth safe
- Retry policy justified
- Failure mapping documented
## Output

- Client design
- Config table
- Example usage
- Failure behavior

Do not commit, push, deploy, or broaden scope unless the user asks.

Reference: [skills/api-integration/SKILL.md](../../skills/api-integration/SKILL.md).
