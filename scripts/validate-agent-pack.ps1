$ErrorActionPreference = "Stop"
$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
$agentsRoot = Join-Path $repoRoot ".github\agents"
$skillsRoot = Join-Path $repoRoot "skills"
$githubSkillsRoot = Join-Path $repoRoot ".github\skills"
$cursorAgentsRoot = Join-Path $repoRoot ".cursor\agents"

$agents = Get-ChildItem $agentsRoot -Filter "*.agent.md" | Sort-Object Name
$skills = Get-ChildItem $skillsRoot -Directory | Where-Object { $_.Name -ne "_shared" } | Sort-Object Name

if ($agents.Count -ne $skills.Count) {
    throw "Agent count ($($agents.Count)) does not match source skill count ($($skills.Count))."
}

foreach ($agent in $agents) {
    $name = $agent.BaseName -replace '\.agent$',''
    $sourceSkill = Join-Path $skillsRoot "$name\SKILL.md"
    $githubSkill = Join-Path $githubSkillsRoot "$name\SKILL.md"
    $cursorAgent = Join-Path $cursorAgentsRoot "$name.md"
    foreach ($required in @($sourceSkill, $githubSkill, $cursorAgent)) {
        if (-not (Test-Path $required)) {
                throw "Missing mirror for ${name}: $required"
        }
    }
}

Write-Host "Validated $($agents.Count) agents and mirrored skills." -ForegroundColor Green
