# Single-Agent Memory Example

Use this repo when one agent needs durable memory across sessions:

```bash
./scripts/cortex-log decision "Use a small local memory before adding orchestration"
./scripts/cortex-log lesson "Session summaries are useful only if they are searchable later"
./scripts/cortex-bootstrap codex
```

The important pattern is not the database choice. The pattern is that session
state becomes project state before the next session starts.
