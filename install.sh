#!/usr/bin/env sh
set -eu

repo_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
config_home=${XDG_CONFIG_HOME:-"$HOME/.config"}
theme_dir="$config_home/otty/themes"

mkdir -p "$theme_dir"
cp "$repo_dir/themes/claude-light.ottytheme" "$theme_dir/claude-light.ottytheme"
cp "$repo_dir/themes/claude-dark.ottytheme" "$theme_dir/claude-dark.ottytheme"

otty_bin=${OTTY_BIN:-}

if [ -z "$otty_bin" ]; then
  if command -v otty >/dev/null 2>&1; then
    otty_bin=otty
  elif command -v otty-cli >/dev/null 2>&1; then
    otty_bin=otty-cli
  elif [ -x /Applications/Otty.app/Contents/MacOS/otty-cli ]; then
    otty_bin=/Applications/Otty.app/Contents/MacOS/otty-cli
  fi
fi

if [ -n "$otty_bin" ]; then
  "$otty_bin" config set theme "Claude Light" >/dev/null 2>&1 || "$otty_bin" config set theme claude-light >/dev/null 2>&1 || true
  "$otty_bin" config set theme-dark "Claude Dark" >/dev/null 2>&1 || "$otty_bin" config set theme-dark claude-dark >/dev/null 2>&1 || true
  "$otty_bin" config set auto-theme-dark-mode true >/dev/null 2>&1 || true
  "$otty_bin" config reload >/dev/null 2>&1 || true
  echo "Installed Claude Light and Claude Dark for Otty."
else
  echo "Installed theme files to $theme_dir."
  echo "Open Otty Settings -> Appearance, then choose Claude Light and Claude Dark."
fi
