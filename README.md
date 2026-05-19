# agent-cortex

Operating memory for local AI agent teams.

This is the first public slice of Agent Cortex: a small, runnable memory core for
recording decisions, lessons, messages, and project knowledge, then bootstrapping
an agent with the context it needs at the start of a session.

It is not the full private Cortex used inside EnGenAI. The goal here is a clean
baseline that people can clone, inspect, run locally, and extend.

## Quick Start

```bash
git clone https://github.com/a-mad-av8r/agent-cortex
cd agent-cortex
cp .env.example .env
./setup.sh
./scripts/cortex-diagnose
./scripts/cortex-log decision "Use local Cortex as operating memory for the launch test"
./scripts/cortex-bootstrap saul
./scripts/cortex-search "operating memory"
```

The default demo uses SQLite so it works without containers. The schema mirrors
the same operating-memory shape you would use with Postgres or pgvector in a
larger system.

## What Is Included

- `schema.sql` with agents, sessions, messages, decisions, lessons, knowledge,
  and retention configuration.
- `scripts/cortex-bootstrap` for session-start context.
- `scripts/cortex-log` for recording durable project memory.
- `scripts/cortex-search` for simple local recall.
- `scripts/cortex-history`, `scripts/cortex-state`, and `scripts/cortex-diagnose`
  for inspection and operations.
- `examples/` and `docs/` showing how this fits a small agent team.

## What Is Deliberately Out

- Telepathy streams and live event awareness.
- Structured handoff lifecycle.
- Role enforcement and impact gates.
- Retention workers beyond the base retention config table.
- Code graph, knowledge graph, multimodal artifact ingestion, customer data, and
  internal EnGenAI platform automation.

## Series Map

| Part | Repo | Focus |
| --- | --- | --- |
| 1 | [agent-cortex](https://github.com/a-mad-av8r/agent-cortex) | Operating memory core |
| 2 | [agent-telepathy](https://github.com/a-mad-av8r/agent-telepathy) | Event awareness |
| 3 | [agent-handoffs](https://github.com/a-mad-av8r/agent-handoffs) | Structured transfer |
| 4 | [agent-roles](https://github.com/a-mad-av8r/agent-roles) | Role boundaries |
| 5 | [agent-retention](https://github.com/a-mad-av8r/agent-retention) | Memory lifecycle |
| 6 | [agent-multimodel](https://github.com/a-mad-av8r/agent-multimodel) | Shared protocol across tools |

## Author

Amad Malik - Founder and CEO/CTO of Adaptech AI Ltd, building EnGenAI
([engenai.app](https://engenai.app)).

[LinkedIn](https://www.linkedin.com/in/amadmalik/) | [GitHub](https://github.com/a-mad-av8r)
