#!/usr/bin/env bash
# Start today's log entry from the template. Usage: ./new-day.sh
# One log file per calendar day, named by the date. If today's file already exists,
# it just points you back to it so the whole day's work lands in one file.
set -euo pipefail
cd "$(dirname "$0")"

today=$(date +%Y-%m-%d)
out="log/${today}.md"

if [ -f "$out" ]; then
  echo "Today's log already exists. Keep adding to it: $out"
else
  sed "s/YYYY-MM-DD/${today}/" log/_TEMPLATE.md > "$out"
  echo "Created $out"
fi

# Open in the default editor if one is set, otherwise print the path.
[ -n "${EDITOR:-}" ] && "$EDITOR" "$out" || echo "Edit it: $out"
