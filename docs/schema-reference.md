# Schema Reference

The public schema is deliberately small:

- `agents`: known local agents and their roles.
- `agent_sessions`: bootstrap records for session starts.
- `messages`: durable message-style notes.
- `decisions`: durable decisions that future agents should not rediscover.
- `lessons`: operational lessons and failures worth remembering.
- `knowledge`: longer project knowledge records.
- `retention_config`: lifecycle settings used by the later retention repo.

The production version can replace SQLite with Postgres and add embeddings,
graph tables, API access, row-level security, and artifact indexes without
changing the basic contract.
