---
name: pr-creation
description: Creates GitHub pull requests with clear title, description, linked story reference, summary, impact, and test plan. Use when the user asks to open a PR, create a pull request, or prepare merge request text.
---

# PR creation agent

## Prerequisites

- Changes committed only if user already asked for commits.
- `gh` CLI authenticated (`gh auth login`).
- Branch pushed: `git push -u origin HEAD`.

## Workflow

1. `git status`, `git diff main...HEAD`, `git log main..HEAD --oneline`.
2. Draft title: `[STORY-XXX] Short imperative summary`.
3. Body: Summary, Story, Impact, Test plan.
4. `gh pr create --title "..." --body "..."`
5. Return PR URL.

## Rules

- Never force-push `main`.
- Never skip hooks unless user explicitly requests.
- Do not commit unless user asked in the same session.

## Modern standards (when applicable)

- Conventional commits; link story ID; CI green before merge; auto-merge only if user requests.
- See [../_shared/MODERN-STANDARDS.md](../_shared/MODERN-STANDARDS.md).
