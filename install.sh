#!/bin/bash
set -e

REPO="captain-intelligence-tech/token-doctor"
INSTALL_DIR="/usr/local/bin"

if [ -w "/opt/homebrew/bin" ]; then
    INSTALL_DIR="/opt/homebrew/bin"
fi

echo "🩺 Installing Token Doctor to $INSTALL_DIR..."

curl -fsSL "https://raw.githubusercontent.com/$REPO/main/bin/token-doctor" -o "$INSTALL_DIR/token-doctor"
chmod +x "$INSTALL_DIR/token-doctor"

echo "🎉 Token Doctor CLI successfully installed! Run 'token-doctor --help' to get started."

# Optional: Auto-install Agent Skill if Antigravity environment detected
SKILL_TARGET="$HOME/.gemini/config/skills/token-doctor"
if [ -d "$HOME/.gemini/config/skills" ]; then
    echo "🤖 Antigravity environment detected. Installing /token-doctor agent skill..."
    mkdir -p "$SKILL_TARGET"
    curl -fsSL "https://raw.githubusercontent.com/$REPO/main/skills/token-doctor/SKILL.md" -o "$SKILL_TARGET/SKILL.md"
    echo "✨ Agent skill installed! You can now use '/token-doctor' directly in your IDE chat."
fi
