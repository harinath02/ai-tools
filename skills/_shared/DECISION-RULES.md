# Decision rules

## Preserve vs modernize

- Preserve the declared stack for routine feature work.
- Suggest modernization when the existing choice is unsupported, unsafe, or blocks an explicit goal.
- If an upgrade is valuable but not required for the story, put it under **recommend next** instead of expanding scope.

## Must / should / could

- **Must**: correctness, security, data integrity, compatibility, acceptance criteria.
- **Should**: tests for changed behavior, observability for critical flows, migrations, local reproducibility.
- **Could**: optional optimizations, speculative architecture, trend-driven enhancements.

## Trend filter

Before recommending a technology, answer:

1. What problem does it solve here?
2. What cost does it add in operations, onboarding, or migration?
3. What simpler alternative exists?
4. What evidence would make the answer change?
