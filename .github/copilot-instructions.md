# ai-tools — Copilot / VS Code instructions

This repository ships **demo stories**, a **Spring Boot** backend, and an **Angular** frontend with a team of **specialized agents** and **skills** that work in **VS Code (GitHub Copilot, Codex)** and **Cursor**.

## How to pick an agent

| User intent | Custom agent (VS Code) | Story examples |
|-------------|------------------------|----------------|
| Not sure where to start | `orchestrator` | — |
| REST API, JPA, Spring | `spring-boot-story` | STORY-001 |
| Angular UI | `angular-story` | STORY-002 |
| API + UI + CORS | `full-stack-developer` | STORY-003 |
| Tests | `test-writer` | STORY-004 |
| Open a PR | `pr-creation` | STORY-005 |
| Review code/PR | `pr-reviewer` | STORY-005 |
| External HTTP APIs | `api-integration` | STORY-006 |
| Refactor / SOLID | `refactor-agent` | — |
| CI/CD pipelines | `cicd-agent` | — |
| README / API docs | `documentation-agent` | — |
| Performance | `performance-agent` | — |

**VS Code:** Chat → agent picker → choose agent, or type `@orchestrator` / use handoff buttons after a reply.  
**Skills:** Type `/spring-boot-story` or let Copilot auto-load from `.github/skills/`.

## Standard pipeline

```
demo/stories/STORY-*.md → implement agent → test-writer → (user asks) pr-creation → pr-reviewer
```

## Defaults (2025+ stack)

- **Java 17+**, **Spring Boot 3.3+**, Maven, layered REST (controller → service → repository).
- **Angular 17+**, standalone components, typed `HttpClient`, signals where the project already uses them.
- **API:** JSON, plural resources (`/api/tasks`), correct HTTP status codes (201, 404, 204).
- **Security:** validate input (`@Valid`), no secrets in git, env vars for credentials.
- **Observability:** actuator health when adding ops features; structured logs for new services.
- **Tests:** JUnit 5 + Mockito (backend), Jest/Karma per project (frontend).

## Repository layout

| Path | Purpose |
|------|---------|
| `demo/stories/` | User stories and acceptance criteria |
| `backend/` | Spring Boot app |
| `frontend/` | Angular app (when story adds it) |
| `.github/agents/` | Custom agents (`.agent.md`) for VS Code / Copilot |
| `.github/skills/` | Agent Skills (portable, `/skill-name` in chat) |
| `.github/instructions/` | File-scoped rules (`*.instructions.md`) |
| `skills/` | Source copy of skills (synced by `scripts/install-copilot.ps1`) |
| `.cursor/agents/` | Cursor-compatible agent prompts (synced from `.github/agents/`) |

## Rules for all agents

1. Read the story file (or user paste) before coding; match **acceptance criteria** exactly.
2. **Do not commit or push** unless the user explicitly asks.
3. **Do not refactor** unrelated files; keep diffs focused.
4. After implementation, **run tests** (`mvn test`, `npm test`) and fix failures.
5. If the user says **"resume demo"**: add a 3–5 bullet **Decision log** referencing `STORY-XXX`.

## Quick start prompts

```
Read demo/stories/STORY-001-task-api.md and implement in backend/ using spring-boot-story conventions.
```

```
@orchestrator I finished STORY-001. What should I run next?
```

See [docs/VSCODE-COPILOT-GUIDE.md](../docs/VSCODE-COPILOT-GUIDE.md) for setup.
