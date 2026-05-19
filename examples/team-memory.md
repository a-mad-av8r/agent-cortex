# Team Memory Example

A small team can share the same `.cortex/cortex.db` file:

```bash
CORTEX_AGENT=saul ./scripts/cortex-log decision "Design owns public visuals"
CORTEX_AGENT=marlow ./scripts/cortex-log lesson "Do not publish until repo smoke tests pass"
CORTEX_AGENT=gem ./scripts/cortex-bootstrap gem
```

For a real team, move the same schema to a shared Postgres database and add
permissions, event streams, and retention workers as the system grows.
