---
name: Demo stories
description: How to read and implement demo/stories acceptance criteria
applyTo: "demo/stories/**"
---
# Demo story instructions

Each `STORY-*.md` file is the **source of truth** for scope.

## Before coding

1. List every acceptance criterion checkbox.
2. Note **Type** (Backend / Frontend / Full-stack).
3. Identify API contract (paths, JSON shapes, status codes).

## While coding

- Implement only what the story asks; defer tests to STORY-004 unless the user requests tests now.
- Put backend code under `backend/`, frontend under `frontend/`.

## After coding

- Provide sample `curl` commands for new REST endpoints.
- List how to run and verify locally.
- If user said **resume demo**: short **Decision log** (3–5 bullets).

## Story order for beginners

STORY-001 → STORY-002 → STORY-003 → STORY-004 → STORY-005 → STORY-006
