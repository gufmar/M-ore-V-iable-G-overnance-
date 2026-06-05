#!/usr/bin/env bash
# Regenerate SVG diagrams from D2 sources.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DIAGRAMS_DIR="$ROOT/docs/diagrams"
OUT_DIR="$DIAGRAMS_DIR/generated"

if command -v d2 >/dev/null 2>&1; then
  D2="d2"
elif [[ -x "$ROOT/.tools/d2-v0.7.1/bin/d2" ]]; then
  D2="$ROOT/.tools/d2-v0.7.1/bin/d2"
else
  echo "d2 not found. Install from https://github.com/terrastruct/d2/releases" >&2
  exit 1
fi

mkdir -p "$OUT_DIR"

for src in "$DIAGRAMS_DIR"/*.d2; do
  base="$(basename "$src" .d2)"
  echo "Generating ${base}.d2 -> generated/${base}.svg"
  "$D2" "$src" "$OUT_DIR/${base}.svg"
done

echo "Done. $(find "$OUT_DIR" -name '*.svg' | wc -l | tr -d ' ') SVG(s) in docs/diagrams/generated/"
