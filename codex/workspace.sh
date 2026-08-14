TARGET_DIR="$HOME/repos"
CONFIG_FILE="$HOME/.codex/config.toml"

echo -e "\n[permissions.default.workspace_roots]" >> "$CONFIG_FILE"
find "$TARGET_DIR" -maxdepth 1 -mindepth 1 -type d | while read -r dir; do
    echo "\"$dir\" = true" >> "$CONFIG_FILE"
done

