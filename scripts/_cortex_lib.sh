#!/usr/bin/env bash

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

if [[ -f .env ]]; then
  set -a
  # shellcheck disable=SC1091
  source .env
  set +a
fi

CORTEX_DB="${CORTEX_DB:-.cortex/cortex.db}"
CORTEX_PROJECT="${CORTEX_PROJECT:-local}"
CORTEX_AGENT="${CORTEX_AGENT:-local-agent}"

sql_escape() {
  printf "%s" "$1" | sed "s/'/''/g"
}

require_sqlite() {
  if ! command -v sqlite3 >/dev/null 2>&1; then
    echo "sqlite3 is required" >&2
    exit 1
  fi
}

require_db() {
  require_sqlite
  if [[ ! -f "$CORTEX_DB" ]]; then
    echo "Database not found at $CORTEX_DB. Run ./setup.sh first." >&2
    exit 1
  fi
}

ensure_agent() {
  local name
  name="$(sql_escape "$1")"
  sqlite3 "$CORTEX_DB" "INSERT OR IGNORE INTO agents(name, role) VALUES ('$name', 'agent');"
}
