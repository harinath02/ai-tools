# Full local setup for ai-tools — run once in PowerShell:
#   cd C:\Users\alber\ai-tools
#   .\scripts\setup-local.ps1

$ErrorActionPreference = "Stop"
$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
$Legacy = "C:\Users\alber\create-skill"

Write-Host "=== ai-tools local setup ===" -ForegroundColor Cyan

if (Test-Path $Legacy) {
    Write-Host "Syncing skills, demo, docs from create-skill..."
    New-Item -ItemType Directory -Force -Path "$RepoRoot\skills","$RepoRoot\demo\stories","$RepoRoot\docs" | Out-Null
    Copy-Item "$Legacy\skills\*" "$RepoRoot\skills" -Recurse -Force
    Copy-Item "$Legacy\demo\stories\STORY-*.md" "$RepoRoot\demo\stories" -Force
    Copy-Item "$Legacy\docs\*.md" "$RepoRoot\docs" -Force -ErrorAction SilentlyContinue
    if (Test-Path "$Legacy\scripts\install-skills.sh") {
        Copy-Item "$Legacy\scripts\install-skills.sh" "$RepoRoot\scripts\" -Force
    }
} else {
    Write-Host "Note: create-skill not found; ensure skills/ and demo/stories/ exist."
}

& "$RepoRoot\scripts\install-copilot.ps1"

$agents = Get-ChildItem "$RepoRoot\.github\agents\*.agent.md" -ErrorAction SilentlyContinue
$skillDirs = Get-ChildItem "$RepoRoot\.github\skills" -Directory -ErrorAction SilentlyContinue
Write-Host "Agents (VS Code): $($agents.Count) in .github\agents\"
Write-Host "Skills (Copilot): $($skillDirs.Count) in .github\skills\"

if (Get-Command gh -ErrorAction SilentlyContinue) {
    Write-Host "GitHub CLI: available"
} else {
    Write-Host "GitHub CLI: not found (optional, for STORY-005 PR demos)"
}

Write-Host ""
Write-Host "Next steps:" -ForegroundColor Green
Write-Host "  VS Code: Open Folder -> $RepoRoot"
Write-Host "           See docs\VSCODE-COPILOT-GUIDE.md"
Write-Host "  Cursor:  Optional .\scripts\install-skills.ps1 for global @skills"
Write-Host "  Demo:    Agent spring-boot-story + STORY-001"
Write-Host "  Tests:   docs\SUBAGENT-TESTING.md"
