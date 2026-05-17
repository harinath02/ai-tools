# Testing guide (no Jira)

Demo stories in `demo/stories/` replace Jira tickets. Prefer **subagent** prompts in each story file.

## Test matrix

| # | Story | Subagent | Pass |
|---|-------|----------|------|
| 1 | STORY-001 | spring-boot-story | `mvnw test`; CRUD works |
| 2 | STORY-002 | angular-story | UI + API |
| 3 | STORY-003 | full-stack-developer | CORS + both apps |
| 4 | STORY-004 | test-writer | Tests green |
| 5 | STORY-005 | pr-creation, pr-reviewer | PR + review |
| 6 | STORY-006 | api-integration | `/api/quote` |

## Subagent smoke (no code)

```
Use the orchestrator subagent. I finished STORY-001. What's next?
```

```
Use the pr-reviewer subagent. Review: void x() { return request.getParameter("id"); }
```

## Verify install

```powershell
# Subagents (12 files)
(Get-ChildItem C:\Users\alber\ai-tools\.cursor\agents\*.md).Count

# Skills (after setup-local.ps1)
Get-ChildItem "$env:USERPROFILE\.cursor\skills" -Directory
```

## Push after tests

See `docs/WHAT-YOU-NEED.md` → https://github.com/harinath02/ai-tools

## Troubleshooting

| Problem | Fix |
|---------|-----|
| Subagent ignored | Say `Use the X subagent` explicitly |
| Wrong folder open | Open `ai-tools` as workspace root |
| Missing skills | `.\scripts\setup-local.ps1` |
