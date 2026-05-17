# STORY-004: Add automated tests

**Subagent / Skill:** `test-writer`

## Demo prompt

```
Use the test-writer subagent. Implement demo/stories/STORY-004-tests.md for backend/ and frontend/.
```

## Acceptance criteria

- [ ] Backend: service unit tests + MockMvc controller tests
- [ ] Frontend: service + component tests
- [ ] `./mvnw test` and `ng test --watch=false` pass
