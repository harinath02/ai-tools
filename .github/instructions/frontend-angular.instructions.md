---
name: Frontend (Angular)
description: Angular UI, routing, and HttpClient conventions for frontend/
applyTo: "frontend/**"
---
# Frontend instructions

Apply [general project standards](../copilot-instructions.md).

## Stack

- Angular 17+, TypeScript strict mode, standalone components unless the project uses NgModules.

## Structure

- Feature components, services for HTTP, typed models/interfaces matching backend JSON.
- `environment.ts` for API base URL; handle loading, empty, and error states in templates.

## Modern practices

- Prefer **signals** / `computed` when the codebase already uses them; otherwise match existing style.
- Use `async` pipe or `takeUntilDestroyed` for subscriptions; avoid memory leaks.
- Accessibility: labels on inputs, keyboard focus, meaningful button text.
- Do not call third-party APIs directly from the browser when a backend proxy is required (see api-integration skill).

## Commands

```bash
cd frontend
npm install
npm test
ng serve
```
