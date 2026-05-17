# Agent team playbook

Works in **VS Code (GitHub Copilot / Codex)** and **Cursor**. Stories live in `demo/stories/`.

## Quick start by IDE

| IDE | Setup | Invoke an agent |
|-----|--------|-----------------|
| **VS Code** | `.\scripts\setup-local.ps1` → [docs/VSCODE-COPILOT-GUIDE.md](docs/VSCODE-COPILOT-GUIDE.md) | Chat → Agent picker → `spring-boot-story` |
| **Cursor** | Same setup + optional `.\scripts\install-skills.ps1` | `Use the spring-boot-story agent to ...` or `@spring-boot-story` |

## Where things live

| Asset | VS Code / Copilot | Cursor |
|-------|-------------------|--------|
| Always-on rules | `.github/copilot-instructions.md`, `AGENTS.md` | `.cursor/rules/` |
| Custom agents | `.github/agents/*.agent.md` | `.cursor/agents/*.md` (synced) |
| Skills | `.github/skills/*/SKILL.md` — `/skill-name` in chat | `skills/` → `~/.cursor/skills/` via `install-skills.ps1` |
| Path rules | `.github/instructions/*.instructions.md` | — |

After editing agents or skills in git, run:

```powershell
.\scripts\install-copilot.ps1
```

## Story → code → test → PR → review

1. **Parse the story** — `demo/stories/*.md`
2. **Pick agent**:
   - Backend only → `spring-boot-story`
   - Frontend only → `angular-story`
   - Both layers → `full-stack-developer`
   - External API → `api-integration`
3. **Tests** → `test-writer` after implementation
4. **PR** → `pr-creation` only when user asks (never commit without request)
5. **Review** → `pr-reviewer` on request
6. **Refactor / perf / docs / CI** → when asked: `refactor-agent`, `performance-agent`, `documentation-agent`, `cicd-agent`

## Demo mode (resume)

If the user says **"resume demo"**: add a 3–5 bullet **Decision log** and reference `STORY-XXX`.

## Defaults

Java 17+, Spring Boot 3.3+, Angular 17+. No secrets in git. See `skills/_shared/MODERN-STANDARDS.md` for optional production practices.
