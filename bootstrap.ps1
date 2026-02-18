param(
    [Parameter(Mandatory=$false)]
    [string]$TargetRoot = "D:\Agent-Workspace",

    [Parameter(Mandatory=$false)]
    [string]$AgentName = "NewAgent"
)

$ErrorActionPreference = "Stop"

function New-DirIfMissing {
    param([string]$Path)
    if (-not (Test-Path $Path)) {
        New-Item -ItemType Directory -Path $Path | Out-Null
    }
}

function Write-FileIfMissing {
    param(
        [string]$Path,
        [string]$Content
    )
    if (-not (Test-Path $Path)) {
        Set-Content -Path $Path -Value $Content -Encoding UTF8
    }
}

$workspace = Join-Path $TargetRoot $AgentName

Write-Host ""
Write-Host "=== Welcome Package Bootstrap ===" -ForegroundColor Cyan
Write-Host "Target workspace: $workspace" -ForegroundColor Yellow

# Core directories
New-DirIfMissing $workspace
New-DirIfMissing (Join-Path $workspace "agents")
New-DirIfMissing (Join-Path $workspace "memory")
New-DirIfMissing (Join-Path $workspace "memory\people")
New-DirIfMissing (Join-Path $workspace "memory\projects")
New-DirIfMissing (Join-Path $workspace "memory\decisions")
New-DirIfMissing (Join-Path $workspace "memory\context")
New-DirIfMissing (Join-Path $workspace "tools")
New-DirIfMissing (Join-Path $workspace "tools\security")

# Core files
Write-FileIfMissing -Path (Join-Path $workspace "AGENTS.md") -Content @"
# AGENTS.md

Session startup:
1. Read SOUL.md
2. Read USER.md
3. Read today's and yesterday's memory note
4. Read MEMORY.md

Rules:
- Write down important outcomes
- Use CLI/API before browser automation
- Ask before external/public actions
"@

Write-FileIfMissing -Path (Join-Path $workspace "SOUL.md") -Content @"
# SOUL.md

Identity:
- Direct
- Practical
- Trustworthy

Behavior:
- Be useful, not performative
- Say what is true
- Protect private data
"@

Write-FileIfMissing -Path (Join-Path $workspace "USER.md") -Content @"
# USER.md

Primary human: Wes
Timezone: America/New_York
Communication:
- concise
- clear
- action oriented
"@

Write-FileIfMissing -Path (Join-Path $workspace "MEMORY.md") -Content @"
# MEMORY.md

## Active Context
- memory/people/wes.md
- memory/projects/current.md

## Rules
- Keep this as index
- Store detail in memory/* files
"@

Write-FileIfMissing -Path (Join-Path $workspace "TOOLS.md") -Content @"
# TOOLS.md

Use internal tools first.
Use security tools before external sends.
"@

Write-FileIfMissing -Path (Join-Path $workspace "SECURITY.md") -Content @"
# SECURITY.md

Non negotiables:
- Never expose credentials
- Use env vars for secrets
- Sanitize shell inputs
- Add command timeouts
- Scan outbound content
"@

# Agents protocol stubs
Write-FileIfMissing -Path (Join-Path $workspace "agents\security-rules.md") -Content "# Security rules`nRead SECURITY.md before sensitive work."
Write-FileIfMissing -Path (Join-Path $workspace "agents\token-efficiency.md") -Content "# Token efficiency`nPrefer CLI/API before browser usage."
Write-FileIfMissing -Path (Join-Path $workspace "agents\heartbeat-protocol.md") -Content "# Heartbeat protocol`nRun periodic checks and only alert when actionable."
Write-FileIfMissing -Path (Join-Path $workspace "agents\group-chat-rules.md") -Content "# Group chat rules`nSpeak when useful. Avoid noise."
Write-FileIfMissing -Path (Join-Path $workspace "agents\skill-policy.md") -Content "# Skill policy`nUse trusted first party skills by default."

# Memory starter files
$today = Get-Date -Format "yyyy-MM-dd"
$decisionMonth = Get-Date -Format "yyyy-MM"

Write-FileIfMissing -Path (Join-Path $workspace "memory\$today.md") -Content "# $today`n`nSession log:`n"
Write-FileIfMissing -Path (Join-Path $workspace "memory\people\wes.md") -Content "# Wes`nPreferences and context go here."
Write-FileIfMissing -Path (Join-Path $workspace "memory\projects\current.md") -Content "# Current Project`nGoals, status, blockers."
Write-FileIfMissing -Path (Join-Path $workspace "memory\decisions\$decisionMonth.md") -Content "# Decisions $decisionMonth`n"

# Security tool placeholders
Write-FileIfMissing -Path (Join-Path $workspace "tools\security\README.md") -Content @"
# Security Tools Placeholder

Add these scripts or equivalents:
- outbound_filter.py
- audit_logger.py
- session_isolator.py
- skill_checker.py
"@

# Usage guide in workspace
Write-FileIfMissing -Path (Join-Path $workspace "WELCOME_PACKAGE_USAGE.md") -Content @"
# Welcome Package Usage

1. Complete naming ceremony
2. Fill IDENTITY.md
3. Read 00_START_HERE through 10_PARITY_BLUEPRINT
4. Run first 72 hour mission pack
5. Send team intro message
"@

Write-Host "Bootstrap complete." -ForegroundColor Green
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1) Open: $workspace"
Write-Host "2) Complete naming ceremony"
Write-Host "3) Read welcome docs"
Write-Host "4) Start 72 hour mission pack"
