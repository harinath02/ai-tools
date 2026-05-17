# One-time sync if you still have the old create-skill folder locally.
$src = "C:\Users\alber\create-skill"
$dst = "C:\Users\alber\ai-tools"
if (-not (Test-Path $src)) {
    Write-Host "No create-skill folder at $src — skip sync."
    exit 0
}
$exclude = @(".git", ".cursor\agents")
robocopy $src $dst /E /XD .git /NFL /NDL /NJH /NJS
Write-Host "Synced from create-skill to ai-tools."
