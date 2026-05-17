# AI Tools — Full-stack agents for Copilot & Cursor

**Repository:** https://github.com/harinath02/ai-tools

Specialized **agents** and **skills** for Spring Boot + Angular: story implementation, tests, PRs, reviews, refactoring, API integration, CI/CD, docs, and performance. Includes demo user stories (no Jira).

## Works in

| Editor | Agents | Skills |
|--------|--------|--------|
| **VS Code** + GitHub Copilot / Codex | `.github/agents/*.agent.md` | `.github/skills/` — `/spring-boot-story` |
| **Cursor** | `.cursor/agents/` (synced) | `skills/` → `install-skills.ps1` |

**Start here (VS Code):** [docs/VSCODE-COPILOT-GUIDE.md](docs/VSCODE-COPILOT-GUIDE.md)  
**Start here (Cursor):** [docs/CURSOR-BEGINNER-GUIDE.md](docs/CURSOR-BEGINNER-GUIDE.md)

## Local setup

```powershell
cd C:\Users\alber\ai-tools
.\scripts\setup-local.ps1
```

1. **File → Open Folder** → this repo  
2. **VS Code:** enable Copilot Agent mode → pick agent from dropdown  
3. **Cursor:** new Agent chat after optional `.\scripts\install-skills.ps1`

## First test (VS Code)

1. Agent: **spring-boot-story**  
2. Prompt:

   ```
   Implement demo/stories/STORY-001-task-api.md in backend/
   ```

## First test (skill)

```
/orchestrator What should I run after STORY-001?
```

## What's included

- **12 custom agents** in `.github/agents/` (handoffs between roles)
- **12 skills** in `skills/` (synced to `.github/skills/`)
- **Path instructions** for backend, frontend, and stories
- **6 demo stories** in `demo/stories/`
- Shared modern standards: `skills/_shared/MODERN-STANDARDS.md`

## Scripts

| Script | Purpose |
|--------|---------|
| `scripts/setup-local.ps1` | Full setup (Copilot + Cursor sync) |
| `scripts/install-copilot.ps1` | Sync skills → `.github/skills/`, agents → `.cursor/agents/` |
| `scripts/install-skills.ps1` | Copy skills to `~/.cursor/skills/` (Cursor global) |

## License

MIT
