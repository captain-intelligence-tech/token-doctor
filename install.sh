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

echo "🎉 Token Doctor successfully installed! Run 'token-doctor --help' to get started."
