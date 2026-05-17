# What you need (checklist)

## One-time setup

```powershell
cd C:\Users\alber\ai-tools
.\scripts\setup-local.ps1
```

Then **File → Open Folder** → `C:\Users\alber\ai-tools` in Cursor.

## Tools

| Tool | Purpose |
|------|---------|
| VS Code + GitHub Copilot | Agents in `.github/agents/`, skills in `.github/skills/` |
| Cursor (optional) | Same repo + `@skills` via `install-skills.ps1` |
| Git | Version control |
| GitHub CLI | PR demos (`gh auth login`) |
| JDK 17 | Spring Boot |
| Node 20 | Angular |

## Push to GitHub (after local tests)

```powershell
cd C:\Users\alber\ai-tools
git init
git add .
git commit -m "Add Cursor skills, subagents, and demo stories"
git branch -M main
git remote add origin https://github.com/harinath02/ai-tools.git
git push -u origin main
```

Repo: https://github.com/harinath02/ai-tools

## Test order

1. `docs/SUBAGENT-TESTING.md` — smoke tests
2. STORY-001 → STORY-003 — code demos
3. Push when satisfied
