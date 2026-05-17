---
name: angular-story
description: Builds Angular features with typed contracts, accessibility, modern state patterns, resilient UX states, and testability. Use when the user asks for work that matches this role or when another agent hands off to this specialty.
---

# Angular Story

Deliver frontend work that feels finished to users, not merely wired to an endpoint.

## Workflow

- 1. Read acceptance criteria and contract before touching components.
- 2. Inspect routing, state, and test conventions already used by the app.
- 3. Add typed models, service calls, components, templates, and routes.
- 4. Handle loading, empty, error, and success states deliberately.
- 5. Use accessibility semantics and keyboard-safe interactions.
- 6. Run the relevant frontend tests/build and report manual verification steps.

## Decision rules

- Prefer the project style first; use signals, standalone APIs, or zoneless patterns only when compatible with the codebase.
- Prefer typed services over ad-hoc response handling.
- Use backend proxies for secrets or third-party keys.
- Choose lazy loading and performance work when feature size or routes justify it.

## Output

- Files changed
- User-flow verification steps
- State handling summary

## Shared references

- Follow [../_shared/MODERN-STANDARDS.md](../_shared/MODERN-STANDARDS.md).
- Use [../_shared/DECISION-RULES.md](../_shared/DECISION-RULES.md) when choosing between project-fit and greenfield defaults.
- Use [../_shared/AGENT-OPERATING-MODEL.md](../_shared/AGENT-OPERATING-MODEL.md) for output discipline and handoffs.

## Guardrails

- Preserve existing project conventions unless the user asks for modernization.
- Keep diffs focused and call out uncertainty rather than inventing facts.
- Do not commit, push, deploy, or broaden scope unless the user asks.
