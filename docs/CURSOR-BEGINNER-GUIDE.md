# Cursor beginner guide (ai-tools)

## What is Cursor?

Cursor is a code editor with an **AI Agent** that edits files, runs commands, uses **Skills** (`@`), and **Subagents** (project agents in `.cursor/agents/`).

## First-time setup

```powershell
cd C:\Users\alber\ai-tools
.\scripts\setup-local.ps1
```

**File → Open Folder** → `C:\Users\alber\ai-tools`

## Modes

| Mode | Use |
|------|-----|
| **Ask** | Questions only |
| **Agent** | Build stories, run tests |
| **Plan** | Design before coding |

## Skills vs agents

| | Skills | Agents |
|---|--------|--------|
| Location | `skills/` → `install-skills.ps1` → `~/.cursor/skills/` | `.cursor/agents/*.md` (synced from `.github/agents/`) |
| Invoke | `@spring-boot-story` | `Use the spring-boot-story agent to ...` |
| Scope | All Cursor projects (after install) | This repo |

**VS Code users:** see [VSCODE-COPILOT-GUIDE.md](VSCODE-COPILOT-GUIDE.md) — agents and skills work via `.github/agents/` and `.github/skills/` without Cursor.

## First session (15 min)

1. Agent mode.
2. Paste:

   ```
   Use the spring-boot-story subagent. Implement demo/stories/STORY-001-task-api.md in backend/.
   Resume demo: short decision log.
   ```

3. Verify:

   ```powershell
   cd backend
   .\mvnw.cmd test
   .\mvnw.cmd spring-boot:run
   ```

## Subagent smoke test

```
Use the orchestrator subagent. I am new—what should I run first?
```

## More

- `docs/SUBAGENT-TESTING.md`
- `docs/TESTING-GUIDE.md`
- https://docs.cursor.com
