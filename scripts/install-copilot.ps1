# Syncs agents and skills for VS Code (GitHub Copilot / Codex) and refreshes Cursor agent prompts.
# Usage: .\scripts\install-copilot.ps1
# Optional: .\scripts\install-copilot.ps1 -UserSkills  (also install skills to ~/.copilot/skills)

param(
    [switch]$UserSkills
)

$ErrorActionPreference = "Stop"
$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path

$SkillsSource = Join-Path $RepoRoot "skills"
$SkillsTarget = Join-Path $RepoRoot ".github\skills"
$AgentsSource = Join-Path $RepoRoot ".github\agents"
$CursorAgents = Join-Path $RepoRoot ".cursor\agents"

Write-Host "=== ai-tools Copilot / VS Code install ===" -ForegroundColor Cyan

# --- Skills -> .github/skills ---
if (-not (Test-Path $SkillsSource)) {
    Write-Error "Skills folder not found: $SkillsSource"
}
New-Item -ItemType Directory -Force -Path $SkillsTarget | Out-Null
$dirs = Get-ChildItem $SkillsSource -Directory | Where-Object { $_.Name -ne "_shared" }
foreach ($dir in $dirs) {
    $dest = Join-Path $SkillsTarget $dir.Name
    if (Test-Path $dest) { Remove-Item $dest -Recurse -Force }
    Copy-Item $dir.FullName $dest -Recurse -Force
    Write-Host "Synced skill: $($dir.Name) -> .github/skills/"
}

if ($UserSkills) {
    $UserTarget = Join-Path $env:USERPROFILE ".copilot\skills"
    New-Item -ItemType Directory -Force -Path $UserTarget | Out-Null
    foreach ($dir in $dirs) {
        $dest = Join-Path $UserTarget $dir.Name
        if (Test-Path $dest) { Remove-Item $dest -Recurse -Force }
        Copy-Item $dir.FullName $dest -Recurse -Force
    }
    Write-Host "Installed skills to: $UserTarget"
}

# --- .github/agents/*.agent.md -> .cursor/agents/*.md ---
New-Item -ItemType Directory -Force -Path $CursorAgents | Out-Null
$agentFiles = Get-ChildItem $AgentsSource -Filter "*.agent.md" -ErrorAction SilentlyContinue
foreach ($file in $agentFiles) {
    $raw = Get-Content $file.FullName -Raw
    $name = $file.BaseName -replace '\.agent$',''
    if ($raw -match '(?s)^---\r?\n(.*?)\r?\n---\r?\n(.*)$') {
        $front = $Matches[1]
        $body = $Matches[2].Trim()
        $desc = ""
        if ($front -match '(?m)^description:\s*(.+)$') { $desc = $Matches[1].Trim() }
        $cursorMd = @"
---
name: $name
description: $desc
---

$body
"@
        $outPath = Join-Path $CursorAgents "$name.md"
        [System.IO.File]::WriteAllText($outPath, $cursorMd)
        Write-Host "Synced agent: $name -> .cursor/agents/"
    }
}

Write-Host ""
Write-Host "Done. Open this folder in VS Code with GitHub Copilot enabled." -ForegroundColor Green
Write-Host "  Agents: Chat picker or .github/agents/"
Write-Host "  Skills: /spring-boot-story etc. from .github/skills/"
Write-Host "  Guide:  docs/VSCODE-COPILOT-GUIDE.md"
