#!/bin/bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

DENYLIST="$ROOT/.privacy-denylist"
if [[ ! -f "$DENYLIST" ]]; then
  echo "Missing denylist: $DENYLIST" >&2
  exit 2
fi

FILES=$(git diff --cached --name-only --diff-filter=ACMR | grep -v '^\.privacy-denylist$' | grep -v '^scripts/privacy_scan\.sh$' || true)

if [[ -z "$FILES" ]]; then
  echo "No staged files to scan."
  exit 0
fi

FAIL=0

echo "Scanning staged files for privacy risks..."
while IFS= read -r pattern; do
  [[ -z "$pattern" ]] && continue
  if printf '%s\n' "$FILES" | xargs -I{} grep -nH --color=never -F "$pattern" "{}" 2>/dev/null; then
    echo "[BLOCK] matched denylist pattern: $pattern"
    FAIL=1
  fi
done < "$DENYLIST"

if printf '%s\n' "$FILES" | grep -E '(^|/)(memory|mail|logs|secrets|private)(/|$)' >/dev/null; then
  echo "[BLOCK] suspicious path matched: memory/mail/logs/secrets/private"
  FAIL=1
fi

if printf '%s\n' "$FILES" | grep -E '(USER\.md|MEMORY\.md|mail\.eml|\.env|\.openclaw)' >/dev/null; then
  echo "[BLOCK] suspicious file matched"
  FAIL=1
fi

if [[ "$FAIL" -ne 0 ]]; then
  echo "Privacy scan FAILED. Review staged files before commit."
  exit 1
fi

echo "Privacy scan passed."
