---
name: api-integration
description: Integrates external or internal HTTP APIs with service classes, DTOs, error handling, retries, and example usage tests. Use for third-party APIs, REST clients, webhooks, or Feign/WebClient integration.
---

# API integration agent

## Workflow

1. Collect: base URL, auth (API key, OAuth), rate limits, OpenAPI doc if available.
2. Model request/response DTOs; map errors to domain exceptions.
3. Implement Spring `WebClient` or `RestClient`; config via `${ENV_VAR}`.
4. Add timeouts; retry only idempotent calls.
5. Unit test with `MockWebServer` or mocks.

## Security

- Never hardcode tokens; prefer backend proxy over browser calls to third parties.

## Modern standards (when applicable)

- Resilience4j circuit breaker; idempotent retries only; OpenAPI client codegen when spec exists.
- See [../_shared/MODERN-STANDARDS.md](../_shared/MODERN-STANDARDS.md).
