# Memory Architecture

## Principle
If it matters, write it down.

## Structure
- `MEMORY.md` is the lightweight index
- `memory/people/` person detail files
- `memory/projects/` project detail files
- `memory/decisions/` monthly decision logs
- `memory/YYYY-MM-DD.md` daily journals

## Startup loading pattern
1. Read MEMORY index
2. Read Active Context files
3. Drill down only on relevant people or projects
4. Keep token discipline while preserving needed context

## Memory writing rules
- Daily notes for raw events
- Decision logs for significant calls
- Update index when detail files change
- Keep context retrievable by future sessions

## Retrieval patterns
- Semantic search for prior work and decisions
- Snippet reads for exact lines
- Cite source path and line when precision matters

## What to capture
- New preferences from Wes
- Deliverables completed
- Mistakes and lessons
- Open loops and deadlines
