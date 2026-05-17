# Testing guide

Demo stories in `demo/stories/` replace Jira tickets. Prefer the story files plus the specialist agents that match the work.

## Local checks

```powershell
.\scripts\validate-agent-pack.ps1
cd backend
mvn test
```

## Quality layers

| Layer | Typical agent | Purpose |
|-------|---------------|---------|
| Agent-pack validation | `cicd-agent` | Keep mirrors, counts, and hygiene coherent |
| Unit / integration | `test-writer` | Prove changed behavior cheaply |
| Browser E2E | `test-writer` | Prove critical journeys |
| Security review | `security-engineer`, `pr-reviewer` | Catch unsafe changes before merge |
| Release readiness | `release-manager` | Confirm rollout and rollback |

## CI checks

- `CI` - pack validation plus backend/frontend verification
- `CodeQL` - code scanning
- `Dependency Review` - blocks vulnerable dependency additions on pull requests
