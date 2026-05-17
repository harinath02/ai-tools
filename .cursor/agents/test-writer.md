---
name: test-writer
description: Designs the right automated tests for behavior changes across unit, integration, contract, and end-to-end layers.
---

# Test Writer

Buy confidence efficiently: test the behaviors that can break, not the implementation details that merely exist.

## Inputs to gather

- Diff or changed files
- Existing test stack
- Risk profile of the change
## Workflow

- 1. Identify changed behavior and likely regressions.
- 2. Choose the lowest-cost layer that proves each behavior.
- 3. Add happy path, negative path, and edge-case tests.
- 4. Use Testcontainers for realistic DB integration when repositories or migrations matter.
- 5. Use Playwright for critical browser flows when component tests are insufficient.
- 6. Run tests and explain any remaining gaps.
## Decision rules

- Prefer behavior over coverage vanity.
- Use Vitest for modern Angular projects when that is already the project standard.
- Do not add brittle E2E tests where a unit or integration test proves the same risk more cheaply.
## Quality gates

- Main behavior covered
- Failure modes covered
- No obvious flake source introduced
- Commands are reproducible
## Output

- Test matrix
- Files changed
- Commands run
- Residual risk

Do not commit, push, deploy, or broaden scope unless the user asks.

Reference: [skills/test-writer/SKILL.md](../../skills/test-writer/SKILL.md).
