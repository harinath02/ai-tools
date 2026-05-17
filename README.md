# AI Tools - enterprise agent pack for modern engineering teams

[![CI](https://github.com/harinath02/ai-tools/actions/workflows/ci.yml/badge.svg)](https://github.com/harinath02/ai-tools/actions/workflows/ci.yml)
[![CodeQL](https://github.com/harinath02/ai-tools/actions/workflows/codeql.yml/badge.svg)](https://github.com/harinath02/ai-tools/actions/workflows/codeql.yml)
[![Dependency Review](https://github.com/harinath02/ai-tools/actions/workflows/dependency-review.yml/badge.svg)](https://github.com/harinath02/ai-tools/actions/workflows/dependency-review.yml)

A reusable multi-agent toolkit for moving from **story -> design -> code -> tests -> review -> release** with modern engineering guardrails for Spring Boot + Angular teams.

## What is included

- **18 specialized agents** for implementation, architecture, testing, review, security, observability, data, debugging, and release work
- Portable **skills** for VS Code / Copilot and Cursor
- Shared enterprise standards covering API design, testing, security, observability, performance, and supply-chain hygiene
- Demo stories in `demo/stories/`
- GitHub workflows for CI, agent-pack validation, CodeQL, and dependency review

## Agent flow

```text
Story / request -> Orchestrator -> Implementer / Specialist agents -> Verification agents
```

## Documentation map

- [Agent catalog](docs/AGENT-CATALOG.md)
- [Architecture](docs/ARCHITECTURE.md)
- [Enterprise baseline](docs/ENTERPRISE-BASELINE.md)
- [Evaluation matrix](docs/EVALUATION-MATRIX.md)
- [VS Code guide](docs/VSCODE-COPILOT-GUIDE.md)
- [Cursor guide](docs/CURSOR-BEGINNER-GUIDE.md)

## Local checks

```powershell
.\scripts\validate-agent-pack.ps1
cd backend
mvn test
```
