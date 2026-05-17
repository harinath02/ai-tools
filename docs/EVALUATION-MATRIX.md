# Evaluation matrix

| Scenario | Primary agent | Pass condition |
|----------|---------------|----------------|
| CRUD backend story | `spring-boot-story` | Contract, validation, errors, tests |
| Accessible Angular UI | `angular-story` | Loading/error/empty states and typed service |
| External provider failure | `api-integration` | Timeout/retry/idempotency reasoning is explicit |
| Risk review | `security-engineer` | Trust boundaries and authz issues surfaced |
| Migration planning | `database-engineer` | Safe migration path and index choices explained |
| Slow endpoint | `performance-agent` | Before/after evidence, not speculation |
| Production incident | `debugging-agent` | Root cause supported by evidence |
| Release readiness | `release-manager` | Rollout, rollback, and artifacts accounted for |
