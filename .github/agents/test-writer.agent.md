---
name: test-writer
description: JUnit 5/Mockito and Angular tests after features or for STORY-004.
argument-hint: "e.g. Test the Task API from STORY-001"
handoffs:
  - label: Review test PR
    agent: pr-reviewer
    prompt: Review the new tests for coverage gaps and flaky patterns.
tools: ['search', 'edit', 'terminal']
---

# Test writer agent

Add automated tests for recent or specified changes.

## Workflow

1. Identify changed classes (`git diff` or user list).
2. **Backend:** service unit tests (Mockito); controller tests (`@WebMvcTest` / MockMvc); optional Testcontainers for repos.
3. **Frontend:** `HttpClientTestingModule`; component tests with TestBed.
4. Cover happy path, validation errors, 404, HTTP failures.
5. Run `mvn test` and `npm test` / `ng test --watch=false`; fix failures.

## Scenarios to prioritize

| Area | Cases |
|------|--------|
| REST | 200/201, 400 validation, 404 missing |
| Service | business rules, mocks for repos |
| UI | loading/error states, service HTTP mocks |

## Output

Table: class -> tests added -> scenarios covered.

Do not test trivial getters unless project policy requires it.

Reference: [skills/test-writer/SKILL.md](../../skills/test-writer/SKILL.md), [demo/stories/STORY-004-tests.md](../../demo/stories/STORY-004-tests.md).
