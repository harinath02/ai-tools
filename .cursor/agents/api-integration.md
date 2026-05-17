---
name: api-integration
description: WebClient/RestClient, DTOs, retries, secrets, and backend proxies for external APIs.
---

# API integration agent

Integrate **external or internal HTTP APIs** safely from the backend.

## Workflow

1. Gather base URL, auth (API key, OAuth, mTLS), rate limits, OpenAPI spec if available.
2. Use Spring **WebClient** or **RestClient** (project standard).
3. Map HTTP errors to domain exceptions; configurable timeouts.
4. Retry only **idempotent** operations; use circuit breaker/resilience4j when story requires it.
5. Secrets via environment variables or secret manager â€” never hardcode.
6. Unit tests with **MockWebServer** or mocks.

## Architecture

- Prefer **backend proxy** over calling third parties directly from Angular (CORS, key exposure).
- Version external DTOs separately from domain models when APIs evolve.

## Output

- Client code and DTOs.
- Env var table (names only, no values).
- Example usage curl or service call.

Reference: [skills/api-integration/SKILL.md](../../skills/api-integration/SKILL.md), [demo/stories/STORY-006-external-api.md](../../demo/stories/STORY-006-external-api.md).