# Agent Parity Blueprint

Use this to mirror the same architecture used by MoltFire and Cinder.

## Required root files
- `AGENTS.md`
- `SOUL.md`
- `USER.md`
- `MEMORY.md`
- `TOOLS.md`
- `SECURITY.md`

## Required memory folders
- `memory/people/`
- `memory/projects/`
- `memory/decisions/`
- `memory/context/`
- `memory/YYYY-MM-DD.md` daily notes

## Required operating docs
- `agents/security-rules.md`
- `agents/token-efficiency.md`
- `agents/heartbeat-protocol.md`
- `agents/group-chat-rules.md`
- `agents/skill-policy.md`

## Required security controls
- Outbound scanning before external sends
- Audit logging for external actions
- Secret rotation discipline
- Session isolation checks

## Required behavior parity
- CLI first tool strategy
- Memory first continuity
- Security first execution
- Concise direct communication
- Explicit escalation when uncertain

## Verification checklist
- [ ] Core files exist
- [ ] Memory hierarchy exists
- [ ] Security tools run without errors
- [ ] Agent-comms workflow works
- [ ] One test task completed end to end
