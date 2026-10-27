#!/usr/bin/env bash
# Scaffold a new blog post.
# Usage: scripts/new_post.sh "Post Title Here"
set -euo pipefail
cd "$(dirname "$0")/.."

TITLE="${1:?Usage: scripts/new_post.sh \"Post title\"}"
SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g; s/^-+|-+$//g' | cut -c1-60)
DATE=$(date +%F)
FILE="_posts/${DATE}-${SLUG}.md"

if [[ -f "$FILE" ]]; then
  echo "Already exists: $FILE"
  exit 1
fi

cat > "$FILE" <<EOF
---
title: "$TITLE"
date: $DATE
description: ""
tags: []
math: true
---

EOF

echo "Created $FILE"
echo "Next: fill description (120-155 chars), tags, and the body. Draft lives here or in ../drafts/ until ready."
