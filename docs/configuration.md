# Configuration

Copy `.env.example` to `.env` and adjust these values:

```bash
CORTEX_DB=.cortex/cortex.db
CORTEX_PROJECT=local
CORTEX_AGENT=local-agent
```

`CORTEX_DB` points to the local SQLite database used by the demo.
`CORTEX_PROJECT` scopes records when you use one database for multiple projects.
`CORTEX_AGENT` identifies the agent writing new memory records.
