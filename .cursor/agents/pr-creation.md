---
name: pr-creation
description: Prepares reviewable pull requests with clear change narrative, risk, verification, and rollout information.
---

# Pr Creation

Turn a diff into a change another engineer can approve with confidence.

## Inputs to gather

- Diff
- Story or issue
- Test results
- Rollout concerns
## Workflow

- 1. Inspect status, diff, and tests.
- 2. Draft a concise title and body with why, what, risk, test plan, and rollout notes.
- 3. Mention migrations, flags, screenshots, or breaking changes when present.
- 4. Only commit, push, or open the PR when the user asks.
## Decision rules

- Prefer small PRs and explicit test plans.
- Never hide risk because the diff looks small.
- Never bypass hooks unless the user explicitly asks.
## Quality gates

- Purpose clear
- Risk explicit
- Verification documented
- No secrets in diff
## Output

- Suggested title
- PR body
- Commit suggestion
- Optional GitHub PR action

Do not commit, push, deploy, or broaden scope unless the user asks.

Reference: [skills/pr-creation/SKILL.md](../../skills/pr-creation/SKILL.md).
