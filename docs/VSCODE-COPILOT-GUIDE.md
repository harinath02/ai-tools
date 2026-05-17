# VS Code + GitHub Copilot / Codex guide

Use **ai-tools** agents and skills in **Visual Studio Code** with **GitHub Copilot**.

## One-time setup

1. Install VS Code and GitHub Copilot.
2. Open this repo as the workspace root.
3. Run:

   ```powershell
   .\scripts\setup-local.ps1
   ```

4. Reload VS Code.

## What gets loaded automatically

| File | Purpose |
|------|---------|
| `.github/copilot-instructions.md` | Always-on project rules |
| `AGENTS.md` | Repo playbook |
| `.github/instructions/*.instructions.md` | Path-scoped rules |
| `.github/agents/*.agent.md` | Custom agents |
| `.github/skills/*/SKILL.md` | Portable skills |

## Recommended path

| Need | Agent |
|------|-------|
| Not sure where to start | `orchestrator` |
| Design help | `solution-architect` |
| Backend | `spring-boot-story` |
| Frontend | `angular-story` |
| End-to-end | `full-stack-developer` |
| Tests | `test-writer` |
| Review | `pr-reviewer` |
| Release readiness | `release-manager` |

## Useful prompts

```text
Use the orchestrator agent. I want to implement demo/stories/STORY-001-task-api.md.
```

```text
Use the security-engineer agent. Threat-model the new public endpoint before release.
```

```text
Use the release-manager agent. Is this change ready to ship?
```
