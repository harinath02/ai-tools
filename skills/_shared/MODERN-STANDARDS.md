# Modern standards (all agents)

Apply when relevant to the story — not every demo needs all items.

## API & backend

- OpenAPI 3 via springdoc when documenting REST.
- RFC 7807 Problem Details for consistent API errors.
- Pagination on list endpoints (`page`, `size`) for production lists.
- Correlation / trace IDs in logs for request tracking.

## Security

- Validate all write payloads; never commit secrets; use env vars.
- OWASP basics: SQL via JPA (no string concat), escape output in UI, HTTPS in prod.

## Testing & quality

- JUnit 5, Mockito, AssertJ; MockMvc for controllers; Testcontainers when integration DB tests are required.
- Angular: TestBed + HttpClientTestingModule; test error/loading states.

## Delivery

- GitHub Actions: test on PR; cache Maven/npm.
- Conventional commits; small PRs with test plan.
- Container-ready: multi-stage Dockerfile only when user asks.

## Frontend

- Standalone Angular components; lazy routes for large apps.
- Accessibility on forms and buttons.
