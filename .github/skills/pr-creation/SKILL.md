---
name: pr-creation
description: Prepares reviewable pull requests with clear change narrative, risk, verification, and rollout information. Use when the user asks for work that matches this role or when another agent hands off to this specialty.
---

# Pr Creation

Turn a diff into a change another engineer can approve with confidence.

## Workflow

- 1. Inspect status, diff, and tests.
- 2. Draft a concise title and body with why, what, risk, test plan, and rollout notes.
- 3. Mention migrations, flags, screenshots, or breaking changes when present.
- 4. Only commit, push, or open the PR when the user asks.

## Decision rules

- Prefer small PRs and explicit test plans.
- Never hide risk because the diff looks small.
- Never bypass hooks unless the user explicitly asks.

## Output

- Suggested title
- PR body
- Commit suggestion
- Optional GitHub PR action

## Shared references

- Follow [../_shared/MODERN-STANDARDS.md](../_shared/MODERN-STANDARDS.md).
- Use [../_shared/DECISION-RULES.md](../_shared/DECISION-RULES.md) when choosing between project-fit and greenfield defaults.
- Use [../_shared/AGENT-OPERATING-MODEL.md](../_shared/AGENT-OPERATING-MODEL.md) for output discipline and handoffs.

## Guardrails

- Preserve existing project conventions unless the user asks for modernization.
- Keep diffs focused and call out uncertainty rather than inventing facts.
- Do not commit, push, deploy, or broaden scope unless the user asks.
