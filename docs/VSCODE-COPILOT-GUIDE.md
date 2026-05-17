# VS Code + GitHub Copilot / Codex guide

Use **ai-tools** agents and skills in **Visual Studio Code** with **GitHub Copilot** (including Copilot Chat agent mode and Codex-capable models).

## One-time setup

1. Install [VS Code](https://code.visualstudio.com/) and [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot).
2. Sign in to GitHub and enable Copilot Chat / **Agent** mode.
3. Open this repo: **File → Open Folder** → `ai-tools`.
4. Run setup:

   ```powershell
   cd C:\Users\alber\ai-tools
   .\scripts\setup-local.ps1
   ```

   This syncs skills to `.github/skills/` and agents to `.cursor/agents/` (for Cursor users too).

5. Optional — install skills for **all** your VS Code projects:

   ```powershell
   .\scripts\install-copilot.ps1 -UserSkills
   ```

6. Reload VS Code (**Developer: Reload Window**).

## What gets loaded automatically

| File | Purpose |
|------|---------|
| `.github/copilot-instructions.md` | Always-on project rules |
| `AGENTS.md` | Playbook (also read by many AI tools) |
| `.github/instructions/*.instructions.md` | Rules when editing `backend/`, `frontend/`, stories |
| `.github/agents/*.agent.md` | **Custom agents** in the chat agent picker |
| `.github/skills/*/SKILL.md` | **Skills** — type `/spring-boot-story` or auto-loaded when relevant |

## How to use an agent

1. Open **Copilot Chat** (Ctrl+Alt+I).
2. Switch to **Agent** mode (not just Ask).
3. Open the **agent** dropdown → pick e.g. `spring-boot-story`.
4. Prompt example:

   ```
   Implement demo/stories/STORY-001-task-api.md in backend/
   ```

5. After a reply, use **handoff** buttons (e.g. orchestrator → spring-boot-story → test-writer).

## How to use a skill

- Type `/` in chat → choose `spring-boot-story` (or another skill name).
- Or mention the task; Copilot may auto-load the skill from `.github/skills/`.

## Verify customizations loaded

1. Command Palette → **Chat: Open Customizations**
2. Check **Instructions**, **Agents**, and **Skills** tabs
3. Or right-click Chat → **Diagnostics**

Recommended settings (optional) are in `.vscode/settings.json`.

## Story workflow (beginner)

| Step | Agent | Story |
|------|--------|-------|
| 1 | spring-boot-story | STORY-001 |
| 2 | angular-story | STORY-002 |
| 3 | full-stack-developer | STORY-003 |
| 4 | test-writer | STORY-004 |
| 5 | pr-creation → pr-reviewer | STORY-005 |

Start unsure? Pick **orchestrator** and ask: `What should I run after STORY-001?`

## Cursor vs VS Code

| Feature | VS Code + Copilot | Cursor |
|---------|-------------------|--------|
| Custom agents | `.github/agents/*.agent.md` | `.cursor/agents/*.md` (synced by script) |
| Skills | `.github/skills/` | `@skill` after `install-skills.ps1` |
| Always-on rules | `copilot-instructions.md` | `.cursor/rules/` |

Run `.\scripts\install-copilot.ps1` after pulling agent updates.

## Troubleshooting

- **Agents missing:** Copilot subscription + Agent mode enabled; folder must be workspace root.
- **Skills not in `/` menu:** Run `install-copilot.ps1`; reload window; check skill `name` matches folder name.
- **Instructions ignored:** Enable `chat.useAgentsMdFile` and check Diagnostics.

## Learn more

- [VS Code custom instructions](https://code.visualstudio.com/docs/copilot/customization/custom-instructions)
- [Custom agents](https://code.visualstudio.com/docs/copilot/customization/custom-agents)
- [Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills)
