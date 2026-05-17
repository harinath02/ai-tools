# Subagent testing guide

## Verify detection

The repo now contains **18 specialized agents**. Confirm they exist in `.cursor/agents/` and `.github/agents/` after running setup.

## Smoke prompts

| Agent | Prompt | Pass if |
|-------|--------|---------|
| `orchestrator` | `I have a cross-cutting feature. What is the smallest safe agent chain?` | Chooses only useful roles |
| `solution-architect` | `Design a rollout for task sharing.` | Names trade-offs and phased delivery |
| `security-engineer` | `Threat-model a public task-sharing endpoint.` | Identifies trust boundaries and authz |
| `observability-engineer` | `What should we instrument on checkout?` | Suggests useful logs, metrics, and traces |
| `debugging-agent` | `This passes locally and fails only in CI.` | Uses evidence-first debugging |

## Implementation sequence

1. `spring-boot-story`
2. `angular-story`
3. `full-stack-developer`
4. `test-writer`
5. `pr-reviewer`
6. `release-manager`

## Local validation

```powershell
.\scripts\validate-agent-pack.ps1
```
