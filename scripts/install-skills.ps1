# Installs all skills from this repo into Cursor personal skills folder.
# Usage: .\scripts\install-skills.ps1

$ErrorActionPreference = "Stop"
$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path

$SkillsSource = Join-Path $RepoRoot "skills"
$SkillsTarget = Join-Path $env:USERPROFILE ".cursor\skills"

if (-not (Test-Path $SkillsSource)) {
    Write-Error "Skills folder not found: $SkillsSource. Run scripts\sync-from-create-skill.ps1 first."
}

New-Item -ItemType Directory -Force -Path $SkillsTarget | Out-Null

$dirs = Get-ChildItem $SkillsSource -Directory
foreach ($dir in $dirs) {
    $dest = Join-Path $SkillsTarget $dir.Name
    if (Test-Path $dest) {
        Remove-Item $dest -Recurse -Force
    }
    Copy-Item $dir.FullName $dest -Recurse -Force
    Write-Host "Installed: $($dir.Name)"
}

Write-Host ""
Write-Host "Done. Installed $($dirs.Count) skills to:"
Write-Host "  $SkillsTarget"
Write-Host "Restart Cursor or start a new Agent chat."
