#!/usr/bin/env bash
# Publish the blog: commit everything and push to GitHub Pages (main branch).
# The site rebuilds automatically at https://elenashliaga.github.io within ~1 minute.
# Usage: scripts/publish.sh [commit message]
set -euo pipefail
cd "$(dirname "$0")/.."

BRANCH=$(git branch --show-current)
if [[ "$BRANCH" != "main" ]]; then
  echo "Refusing to publish from branch '$BRANCH' (expected main)."
  exit 1
fi

git add -A
if git diff --cached --quiet; then
  echo "Nothing to publish: no staged changes."
  exit 0
fi

MSG="${1:-Publish post $(date +%F)}"
git commit -m "$MSG"
git pull --rebase origin main
git push origin main
echo "Pushed. Live in ~1 min at https://elenashliaga.github.io"
