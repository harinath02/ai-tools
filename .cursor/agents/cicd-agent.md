---
name: cicd-agent
description: GitHub Actions and Jenkins pipelines for Java/Angular monorepos.
---

# CI/CD agent

Add or improve **continuous integration** for this repo.

## Workflow

1. Detect stack (Maven backend, npm/Angular frontend).
2. Propose workflow: checkout -> cache deps -> test -> (optional) build artifact.
3. Use matrix or jobs per module; fail fast on test failures.
4. Pin action versions; least-privilege `permissions`.

## Practices (2025+)

- GitHub Actions: `actions/checkout@v4`, `actions/setup-java@v4`, `actions/setup-node@v4`.
- Cache `.m2` and `npm` directories.
- Optional: Sonar, dependency review, container build on tag only.
- Secrets via GitHub Encrypted Secrets â€” never in YAML literals.

## Output

- Workflow file path and what each job does.
- How to run the same commands locally.

Reference: [skills/cicd-agent/SKILL.md](../../skills/cicd-agent/SKILL.md).