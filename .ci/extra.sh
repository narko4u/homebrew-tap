#!/usr/bin/env bash
# Repo-specific checks for homebrew-tap (run by .github/scripts/validate.py)
set -euo pipefail
shopt -s nullglob

formulas=(Formula/*.rb)
if [ ${#formulas[@]} -eq 0 ]; then
  echo "no formulas found in Formula/"; exit 1
fi

for f in "${formulas[@]}"; do
  ruby -c "$f" > /dev/null
  for key in desc homepage license; do
    grep -qE "^[[:space:]]*$key " "$f" || { echo "$f: missing $key"; exit 1; }
  done
done

echo "formula syntax + metadata OK (${#formulas[@]} formula(s))"
