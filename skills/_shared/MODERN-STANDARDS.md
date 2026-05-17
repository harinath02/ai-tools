# Modern enterprise standards (all agents)

Use these standards as a project-aware baseline. Prefer the repository's existing constraints when they are intentional; suggest upgrades when they buy clear value.

## Decision hierarchy

1. Protect user safety, data integrity, and secrets.
2. Preserve explicit project constraints unless the user asks to modernize them.
3. Prefer the simplest design that satisfies today's real requirements.
4. Choose technology for fit, operability, and team comprehension - not trendiness alone.
5. Make important trade-offs visible.

## 2026 baseline

| Area | Greenfield default | Project-aware note |
|------|--------------------|-------------------|
| Java | Java 21 LTS or Java 25 LTS | Keep the repo's declared version unless upgrading is part of the task. |
| Spring | Spring Boot 4.x | Support maintained 3.x codebases without gratuitous upgrades. |
| Angular | Angular 21 | Preserve the app's major version; plan upgrades deliberately. |
| API | OpenAPI 3.1, JSON Schema, RFC 9457 Problem Details | Keep contracts backward compatible unless the user approves a breaking change. |
| Data | PostgreSQL + Flyway/Liquibase | Use H2 only for local demos or tests when the story permits it. |
| Testing | JUnit 5, Mockito/AssertJ, Testcontainers, Vitest where project-fit, Playwright for critical browser flows | Choose the cheapest layer that proves the risk. |
| Observability | Actuator/Micrometer + OpenTelemetry-compatible telemetry | Add useful signals, not vanity noise. |
| Delivery | GitHub Actions, least privilege, CodeQL, dependency review, Dependabot | Use OIDC for cloud deploy auth where applicable. |

## Backend

- Keep controllers thin, business logic in services, and persistence behind repositories.
- Validate write inputs; use DTOs at boundaries; avoid leaking entities as public contracts.
- Prefer pagination for production list endpoints unless bounded by design.
- Model errors consistently with RFC 9457-style responses and avoid leaking internals.
- Use Flyway/Liquibase for schema evolution when the app has persistent data.

## Frontend

- Use typed contracts, explicit loading/error/empty states, and accessible semantics.
- Prefer standalone APIs and modern Angular patterns when the codebase supports them.
- Use signals or zoneless patterns because they fit the app, not because they are fashionable.
- Keep secrets server-side; browser code may hold public configuration, never private credentials.

## API and integration

- Define contracts before implementation: method, path, payloads, status codes, and failures.
- Prefer OpenAPI as source of truth for public or shared APIs.
- External clients need timeouts, bounded retries, idempotency reasoning, and domain-specific error mapping.
- Prefer backend proxies for third-party APIs that require secrets or policy enforcement.

## Data

- Design schema around domain truth and query patterns.
- Add indexes for real access paths, not aesthetics.
- Plan destructive migrations, backfills, and rollbacks before release.

## Security

- Treat authentication and authorization as separate concerns.
- Never commit secrets; prefer short-lived credentials, secret managers, and least privilege.
- Validate inputs, encode outputs, and avoid logging sensitive payloads.

## Testing and quality

- Prefer a risk-based test pyramid: unit for logic, integration for boundaries, E2E for critical journeys.
- Use Testcontainers where a real database materially changes confidence.
- Use Playwright for browser flows whose failure is user-visible and cross-component.

## Observability and performance

- Emit structured logs, useful metrics, and traces for critical journeys.
- Measure before optimizing; record before/after evidence.
- Watch latency, error rate, saturation, query count, and bundle size where relevant.

## Delivery and supply chain

- Require PR checks for build, test, agent-pack validation, dependency review, and code scanning where available.
- Pin supported major action versions and use least-privilege workflow permissions.
- Produce SBOMs and provenance at release boundaries when consumers or policy benefit from them.

## AI collaboration

- Start by discovering the repo; do not hallucinate architecture.
- Distinguish **required now**, **recommended next**, and **consider later**.
- Surface trade-offs and uncertainty honestly.
