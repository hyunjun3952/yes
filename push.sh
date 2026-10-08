#!/bin/sh
set -e
cd "$(dirname "$0")"
branch=$(git rev-parse --abbrev-ref HEAD)
git add -A
git commit --amend -m "Initial commit"
git push --force-with-lease origin "$branch"
