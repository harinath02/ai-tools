---
name: orchestrator
description: Routes full-stack work to the correct specialized agent skill (Spring Boot, Angular, tests, PR, review, refactor, API, CI/CD, docs, performance). Use when the user is unsure which agent to use, wants a workflow plan, or says "orchestrator" or "which skill".
---

# Agent orchestrator

## Decision tree

| User intent | Skill / Subagent |
|-------------|------------------|
| REST API, JPA, Spring service | spring-boot-story |
| Angular component, service, UI | angular-story |
| Backend + frontend + DB together | full-stack-developer |
| Unit/integration tests | test-writer |
| Open PR, PR description | pr-creation |
| Review diff or PR | pr-reviewer |
| Clean up code, SOLID | refactor-agent |
| Third-party or internal HTTP API | api-integration |
| GitHub Actions, Jenkins | cicd-agent |
| README, API docs | documentation-agent |
| Slow queries, caching, bundle size | performance-agent |

## Standard pipeline (no Jira)

```
Story file (demo/stories/) → implement → test-writer → (user asks) pr-creation → pr-reviewer
```

## Handoff checklist

```
Story ID:
Files changed:
API contract (if any):
Open questions:
Next agent:
```

## IDE support

- **VS Code / Copilot:** pick custom agents in `.github/agents/` or use handoffs from `orchestrator`.
- **Cursor:** `Use the <name> agent` or sync via `scripts/install-copilot.ps1`.
