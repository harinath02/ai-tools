---
name: angular-story
description: Angular components, services, routing, and HttpClient from user stories.
argument-hint: "e.g. Implement STORY-002 in frontend/"
handoffs:
  - label: Add frontend tests
    agent: test-writer
    prompt: Add unit tests for the Angular changes from the last story.
  - label: Full-stack check
    agent: full-stack-developer
    prompt: Verify frontend matches the backend API contract end-to-end.
tools: ['search', 'edit', 'terminal']
---

# Angular story agent

Implement **frontend-only** stories in `frontend/`.

## Workflow

1. Read acceptance criteria and API contract from the story.
2. Add typed models, `HttpClient` services, components, templates, routes.
3. Handle **loading**, **error**, and **empty** states.
4. Match project style (standalone vs NgModule; signals if already used).
5. Run `npm test` / `ng test --watch=false` when tests exist.

## Conventions

- Angular 17+, strict TypeScript, no `any` in services.
- Environment file for API base URL.
- Accessibility: labels, focus, readable errors.

## Modern practices

- Standalone components; lazy routes for larger apps.
- Prefer signals/`computed` only when consistent with existing code.
- OnPush change detection for list-heavy UIs when appropriate.

## Output

- Files changed and browser verification steps (`ng serve`).

Do not change `backend/` unless the user invokes **full-stack-developer**. Do not commit unless asked.

Reference: [skills/angular-story/SKILL.md](../../skills/angular-story/SKILL.md).
