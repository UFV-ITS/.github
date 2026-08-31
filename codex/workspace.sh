#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="${TARGET_DIR:-$HOME/repos}"
CONFIG_FILE="${CONFIG_FILE:-$HOME/.codex/config.toml}"

[[ -d "$TARGET_DIR" ]] || { echo "TARGET_DIR not found: $TARGET_DIR" >&2; exit 1; }
[[ -f "$CONFIG_FILE" ]] || { echo "CONFIG_FILE not found: $CONFIG_FILE" >&2; exit 1; }

# Ensure the expected section exists.
grep -q '^\[permissions\.secure\.workspace_roots\]$' "$CONFIG_FILE" || printf '\n[permissions.secure.workspace_roots]\n# We have a script that can generate this list for you so always keep this section at the bottom for the script\n#\n# Your workspace roots go here, for example:\n# "/home/<user>/repos/my-project-1" = true\n# "/home/<user>/repos/my-project-2" = true\n\n' >> "$CONFIG_FILE"

while IFS= read -r -d '' dir; do
  line="\"$dir\" = true"
  grep -Fxq "$line" "$CONFIG_FILE" || printf '%s\n' "$line" >> "$CONFIG_FILE"

done < <(find "$TARGET_DIR" -maxdepth 1 -mindepth 1 -type d -print0)
