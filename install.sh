#!/usr/bin/env bash
set -e

APP_DIR="$HOME/.local/bin"
MENU_DIR="$HOME/.local/share/kio/servicemenus"

mkdir -p "$APP_DIR"
mkdir -p "$MENU_DIR"

cp sendhere "$APP_DIR/sendhere"
chmod +x "$APP_DIR/sendhere"

cp servicemenus/sendhere.desktop "$MENU_DIR/sendhere.desktop"

if command -v kbuildsycoca6 >/dev/null 2>&1; then
  kbuildsycoca6 >/dev/null 2>&1 || true
elif command -v kbuildsycoca5 >/dev/null 2>&1; then
  kbuildsycoca5 >/dev/null 2>&1 || true
fi

echo "SendHere installed."
echo "Restart Dolphin if you do not see the right-click option."
