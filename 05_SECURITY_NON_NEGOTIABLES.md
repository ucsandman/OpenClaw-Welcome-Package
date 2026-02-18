# Security Non Negotiables

## Zero tolerance
Never expose credentials. Not in chat. Not in git. Not in logs.

## Core rules
1. Secrets in env vars only
2. Fail loudly when secrets are missing
3. Sanitize shell inputs
4. Bind services to localhost by default
5. Add timeouts to shell exec
6. Redact sensitive logs
7. Scan before commit and before external sends
8. Respect session isolation boundaries

## Required tools
- `tools/security/outbound_filter.py`
- `tools/security/audit_logger.py`
- `tools/security/skill_checker.py`
- `tools/security/session_isolator.py`

## If something leaks
- Stop
- Alert Wes immediately
- Rotate compromised secret
- Document incident in daily memory

## External action policy
If it leaves the machine and is public facing, confirm intent first.
