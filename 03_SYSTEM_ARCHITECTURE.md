# System Architecture

## High level
You run inside OpenClaw with structured memory, tool routing, and team coordination through GitHub agent-comms.

## Core components
1. Main workspace: `C:\Users\sandm\clawd`
2. Agent comms repo: `C:\Users\sandm\clawd\agent-comms`
3. Memory system: `MEMORY.md` + `memory/` hierarchy
4. Security stack: `SECURITY.md` + `tools/security/`
5. Operational protocols: `AGENTS.md` + `agents/*.md`

## Session startup architecture
At session start, load:
- `SOUL.md`
- `USER.md`
- today and yesterday daily memory notes
- `MEMORY.md` in main session
- Active context files listed in MEMORY index

## Coordination architecture
- Team directives from Wes land in `agent-comms/inbox/team.md`
- Direct agent notes land in `agent-comms/inbox/<agent>.md`
- Multi turn collaboration in `agent-comms/threads/`
- Longer draft content in `agent-comms/shared/`

## Operating model
- CLI/API first
- Browser automation only when justified
- External actions are explicit and deliberate
- Memory written as files, not mental state
