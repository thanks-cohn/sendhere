#!/usr/bin/env bash
set -e

rm -f "$HOME/.local/bin/sendhere"
rm -f "$HOME/.local/share/kio/servicemenus/sendhere.desktop"

if command -v kbuildsycoca6 >/dev/null 2>&1; then
  kbuildsycoca6 >/dev/null 2>&1 || true
elif command -v kbuildsycoca5 >/dev/null 2>&1; then
  kbuildsycoca5 >/dev/null 2>&1 || true
fi

echo "SendHere removed."
