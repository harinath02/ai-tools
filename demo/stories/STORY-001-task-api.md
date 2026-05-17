# STORY-001: Task API (Spring Boot)

**Type:** Backend only  
**Subagent / Skill:** `spring-boot-story`

## User story

As a user, I want a REST API to manage tasks so I can create and complete work items.

## Acceptance criteria

- [ ] `GET /api/tasks` returns all tasks (JSON array).
- [ ] `POST /api/tasks` creates a task with body `{ "title": string, "done": boolean }` (default `done: false`).
- [ ] `GET /api/tasks/{id}` returns one task or 404.
- [ ] `PUT /api/tasks/{id}` updates title and/or done.
- [ ] `DELETE /api/tasks/{id}` returns 204.
- [ ] Validation: title required, max 200 chars.
- [ ] H2 in-memory DB for local run; JPA entity `Task`.

## Demo prompt (subagent)

```
Use the spring-boot-story subagent. Implement demo/stories/STORY-001-task-api.md in backend/.
Spring Boot 3.3, Java 17, Maven. Resume demo: short decision log.
```
