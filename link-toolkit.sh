#!/bin/bash
# Links the shared claude-transfer toolkit (skills, agents, CLAUDE.md, plugins, MCP servers, secrets)
# into a new project folder inside "try". Run once per new project folder.
#
# Usage: ./link-toolkit.sh <new-project-folder-name>
# Example: ./link-toolkit.sh my-new-app
#
# This only works for folders directly inside "try" (siblings of claude-transfer).
# It must NOT be run for anything outside "try" (e.g. the "dev" folder).

set -e

if [ -z "$1" ]; then
  echo "Usage: $0 <new-project-folder-name>"
  exit 1
fi

TRY_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET="$TRY_DIR/$1"

if [ ! -d "$TARGET" ]; then
  echo "Creating $TARGET"
  mkdir -p "$TARGET"
fi

cd "$TARGET"
ln -sf ../claude-transfer/.claude .claude
ln -sf ../claude-transfer/.mcp.json .mcp.json
ln -sf ../claude-transfer/.env .env

echo "Linked toolkit into: $TARGET"
echo "Next: cd \"$TARGET\" && claude   # first run will ask to approve MCP servers, that's normal"
