# Subagent testing guide (local, before GitHub push)

## Prerequisites

- Cursor opened on **`C:\Users\alber\ai-tools`**
- Agent mode (not Ask) for code generation
- Optional: `.\scripts\install-skills.ps1` for `@` skills

## Verify subagents are detected

Subagents must exist here:

```
.cursor/agents/
  spring-boot-story.md
  angular-story.md
  full-stack-developer.md
  test-writer.md
  pr-creation.md
  pr-reviewer.md
  refactor-agent.md
  api-integration.md
  cicd-agent.md
  documentation-agent.md
  performance-agent.md
  orchestrator.md
```

In Cursor settings or agent picker, you may see custom agents listed (UI varies by version).

## Smoke tests (no code)

Copy each prompt into **Agent** chat:

| Subagent | Test prompt | Pass if |
|----------|-------------|---------|
| orchestrator | `Use the orchestrator subagent. I finished STORY-001. What's next?` | Suggests angular-story or STORY-002 |
| pr-reviewer | `Use the pr-reviewer subagent. Review: public void foo() { String p = request.getParameter("id"); }` | Security/validation feedback |
| documentation-agent | `Use the documentation-agent subagent. Outline README sections for this repo.` | Sensible README outline |
| cicd-agent | `Use the cicd-agent subagent. Sketch CI for backend/ and frontend/ folders.` | GitHub Actions YAML sketch |

## Implementation tests (with demo stories)

| Order | Subagent | Story | Pass if |
|-------|----------|-------|---------|
| 1 | spring-boot-story | STORY-001 | `backend/` runs; CRUD works |
| 2 | angular-story | STORY-002 | UI talks to API |
| 3 | full-stack-developer | STORY-003 | Both apps + CORS |
| 4 | test-writer | STORY-004 | Tests pass |
| 5 | pr-creation + pr-reviewer | STORY-005 | PR created & review text |
| 6 | api-integration | STORY-006 | `/api/quote` proxy |

Example:

```
Use the spring-boot-story subagent. Implement demo/stories/STORY-001-task-api.md in backend/.
Resume demo: 3-bullet decision log.
```

## Subagent vs skill

- Same name (e.g. `spring-boot-story`) — subagent is project-local; skill is portable after install.
- Prefer **subagent** when working only in ai-tools.
- Prefer **skill** when working in other repos.

## Troubleshooting

| Issue | Fix |
|-------|-----|
| Subagent not found | Open `ai-tools` as workspace root; check `.md` extension |
| Agent ignores subagent | Say explicitly: `Use the X subagent` |
| Missing demo/stories | Run `.\scripts\sync-from-create-skill.ps1` |
| Missing skills folder | Sync script or copy from create-skill |

## After local tests pass

```powershell
git add .
git commit -m "Add subagents and agent skills pack"
git push -u origin main
```
