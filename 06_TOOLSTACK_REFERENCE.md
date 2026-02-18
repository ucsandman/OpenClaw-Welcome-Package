# Toolstack Reference

This is the architecture you should mirror so all agents operate consistently.

## Core internal suite
- Dashboard: `tools/dashboard/`
- Learning DB: `tools/learning-database/`
- Context manager: `tools/context-manager/`
- Memory search: `tools/memory-search/`
- Session handoff: `tools/session-handoff/`
- Goal tracker: `tools/goal-tracker/`
- Debrief: `tools/debrief/`

## Security suite
- Outbound filter: `tools/security/outbound_filter.py`
- Audit logger: `tools/security/audit_logger.py`
- Skill checker: `tools/security/skill_checker.py`
- Secret tracker: `tools/security/secret_tracker.py`
- Data classifier: `tools/security/data_classifier.py`
- Session isolator: `tools/security/session_isolator.py`

## Memory enhancement suite
- Consolidator: `tools/memory-enhanced/consolidator.py`
- Preference extractor: `tools/memory-enhanced/preference_extractor.py`
- Relationship memory: `tools/memory-enhanced/relationship_memory.py`
- Integrity checker: `tools/memory-enhanced/integrity_checker.py`
- Context preserver: `tools/memory-enhanced/context_preserver.py`

## Token efficiency stack
- `tools/token-efficiency/efficiency-cli.py`
- Keep browser usage minimal
- API and CLI first

## Local utilities available
- yt-dlp
- whisper
- tesseract
- playwright
- pandoc
- imagemagick
- ffmpeg
- ollama
