# STORY-006: Integrate a public API

**Subagent / Skill:** `api-integration`

## Demo prompt

```
Use the api-integration subagent. Implement demo/stories/STORY-006-external-api.md on top of STORY-003.
```

## Acceptance criteria

- [ ] `GET /api/quote` proxies quotable.io (or similar)
- [ ] DTO `{ content, author }`; 3s timeout; 503 on failure
- [ ] Angular footer shows quote via backend only
- [ ] Unit test with mocked HTTP
