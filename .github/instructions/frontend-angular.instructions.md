---
name: Frontend (Angular)
description: Angular UI, routing, accessibility, modern state, and testing conventions for frontend/
applyTo: "frontend/**"
---
# Frontend instructions

Apply the shared standards first.

## Stack policy

- Prefer the repo's declared Angular version for routine work.
- For greenfield work, use the current supported Angular line and compatible Node / TypeScript versions.

## Structure

- Use typed models, service boundaries, and route-level feature organization.
- Handle loading, empty, error, and success states explicitly.
- Use environment configuration for API URLs.

## Modern practices

- Prefer standalone APIs, signals, zoneless patterns, and lazy routes only when they fit the existing app.
- Keep forms and actions accessible: labels, focus order, keyboard semantics, meaningful errors.
- Keep secrets out of the browser; use a backend proxy for third-party credentials.

## Commands

```bash
cd frontend
npm ci
npm test
npm run build
```
