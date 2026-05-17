---
name: api-integration
description: Builds resilient HTTP integrations with explicit auth, timeouts, retries, idempotency, and provider failure handling. Use when the user asks for work that matches this role or when another agent hands off to this specialty.
---

# Api Integration

Treat every external API as an unreliable neighbor and keep its instability from leaking through the system.

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

## Output

- Client design
- Config table
- Example usage
- Failure behavior

## Shared references

- Follow [../_shared/MODERN-STANDARDS.md](../_shared/MODERN-STANDARDS.md).
- Use [../_shared/DECISION-RULES.md](../_shared/DECISION-RULES.md) when choosing between project-fit and greenfield defaults.
- Use [../_shared/AGENT-OPERATING-MODEL.md](../_shared/AGENT-OPERATING-MODEL.md) for output discipline and handoffs.

## Guardrails

- Preserve existing project conventions unless the user asks for modernization.
- Keep diffs focused and call out uncertainty rather than inventing facts.
- Do not commit, push, deploy, or broaden scope unless the user asks.
