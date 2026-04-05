#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SOURCE_DIR="$REPO_ROOT/skills/india-market-daily"
TARGET_BASE="${CODEX_HOME:-$HOME/.codex}/skills"
TARGET_DIR="$TARGET_BASE/india-market-daily"

mkdir -p "$TARGET_BASE"
rm -rf "$TARGET_DIR"
cp -R "$SOURCE_DIR" "$TARGET_DIR"

printf 'Installed skill to %s\n' "$TARGET_DIR"
printf 'Invoke with: $india-market-daily\n'
