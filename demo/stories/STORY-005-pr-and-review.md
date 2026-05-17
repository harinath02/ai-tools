# STORY-005: PR and code review

**Subagents:** `pr-creation`, `pr-reviewer`

## Demo prompts (in order)

1. Ask user to commit STORY-003 work first.
2. `Use the pr-creation subagent to open a PR for this branch`
3. `Use the pr-reviewer subagent on diff vs main`

## Acceptance criteria

- [ ] PR title `[STORY-003] Add task manager full-stack demo`
- [ ] PR body with summary and test plan
- [ ] Review with verdict + suggestions
