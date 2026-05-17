---
name: angular-story
description: Implements Angular frontend user stories—components, services, routing, reactive forms, and HTTP client integration. Use for Angular, TypeScript frontend, UI components, or Figma-aligned UI when specs are provided.
---

# Angular story agent

## Workflow

1. Read acceptance criteria and API contract (OpenAPI or story).
2. Locate feature module structure (`*.module.ts` or standalone components).
3. Add/update: model interfaces, service (`HttpClient`), component, template, styles, route.
4. Wire loading and error states in the template.
5. Match existing style (Material, Bootstrap, or project CSS).

## Conventions

- Angular 17+; prefer standalone components if the project already uses them.
- Strong typing for API models; no `any` in services.
- Unsubscribe or use `async` pipe / `takeUntilDestroyed` for subscriptions.
- Accessibility: labels, button types, focus on dialogs.

## Design specs

- If user provides Figma URL: use browser tools to inspect layout, or ask for exported PNG/specs in repo.
- If no design: clean, minimal UI consistent with existing pages.

## Commands

```bash
npm install
ng test
ng serve
```

## Output

- Files changed; how to verify in browser.
- Resume demo: brief UX decisions (3 bullets).

## Modern standards (when applicable)

- Standalone components; lazy routes; signals only if project already uses them.
- a11y on forms; typed HttpClient; environment-based API URL.
- See [../_shared/MODERN-STANDARDS.md](../_shared/MODERN-STANDARDS.md).

## Do not

- Change backend code unless user requests full-stack skill.
- Commit without explicit user request.
