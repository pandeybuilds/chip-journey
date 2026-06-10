#!/usr/bin/env bash
# Start today's log entry from the template. Usage: ./new-day.sh
# Figures out the next day number, copies the template, opens it.
set -euo pipefail
cd "$(dirname "$0")"

today=$(date +%Y-%m-%d)
# next day number = (count of existing day logs) + 1, zero-padded to 3
n=$(ls log/*-day-*.md 2>/dev/null | wc -l | tr -d ' ')
next=$(printf "%03d" $((n + 1)))
out="log/${today}-day-${next}.md"

if [ -f "$out" ]; then
  echo "Today's log already exists: $out"
else
  sed "s/YYYY-MM-DD/${today}/; s/Day NNN/Day ${next}/" log/_TEMPLATE.md > "$out"
  echo "Created $out"
fi

# open in default editor if EDITOR set, else just print path
[ -n "${EDITOR:-}" ] && "$EDITOR" "$out" || echo "Edit it: $out"
