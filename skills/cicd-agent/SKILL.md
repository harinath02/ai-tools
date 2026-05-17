---
name: cicd-agent
description: Generates CI/CD pipelines for GitHub Actions or Jenkins—build, test, and deploy stages for Spring Boot and Angular. Use when the user asks for CI, CD, pipeline, GitHub Actions, or Jenkins.
---

# CI/CD agent

## Workflow

1. Detect stack: Maven/Gradle, npm/Angular, Docker.
2. Default: GitHub Actions unless user says Jenkins.
3. Stages: checkout → setup → test → build → optional deploy on main.

See `skills/cicd-agent` in create-skill repo for full YAML template, or generate parallel `backend` and `frontend` jobs.

## Do not

- Store secrets in YAML; document `secrets.*` names only.

## Modern standards (when applicable)

- OIDC to cloud deploy; dependency review action; SBOM on release tags.
- See [../_shared/MODERN-STANDARDS.md](../_shared/MODERN-STANDARDS.md).
