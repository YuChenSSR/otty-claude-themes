#!/usr/bin/env sh
set -eu

raw_base=${OTTY_CLAUDE_THEMES_RAW_BASE:-https://raw.githubusercontent.com/YuChenSSR/otty-claude-themes/main}
config_home=${XDG_CONFIG_HOME:-"$HOME/.config"}
theme_dir="$config_home/otty/themes"

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" 2>/dev/null && pwd || pwd)

download() {
  url=$1
  output=$2

  if command -v curl >/dev/null 2>&1; then
    curl -fsSL "$url" -o "$output"
  elif command -v wget >/dev/null 2>&1; then
    wget -qO "$output" "$url"
  else
    echo "Need curl or wget to download theme files." >&2
    exit 1
  fi
}

install_theme() {
  file_name=$1
  local_file="$script_dir/themes/$file_name"
  output_file="$theme_dir/$file_name"

  if [ -f "$local_file" ]; then
    cp "$local_file" "$output_file"
  else
    download "$raw_base/themes/$file_name" "$output_file"
  fi
}

find_otty() {
  if [ -n "${OTTY_BIN:-}" ]; then
    printf '%s\n' "$OTTY_BIN"
  elif command -v otty >/dev/null 2>&1; then
    command -v otty
  elif command -v otty-cli >/dev/null 2>&1; then
    command -v otty-cli
  elif [ -x /Applications/Otty.app/Contents/MacOS/otty-cli ]; then
    printf '%s\n' /Applications/Otty.app/Contents/MacOS/otty-cli
  fi
}

mkdir -p "$theme_dir"
install_theme claude-light.ottytheme
install_theme claude-dark.ottytheme

otty_bin=$(find_otty || true)

if [ -n "$otty_bin" ]; then
  "$otty_bin" config set theme "Claude Light" >/dev/null 2>&1 || "$otty_bin" config set theme claude-light >/dev/null 2>&1 || true
  "$otty_bin" config set theme-dark "Claude Dark" >/dev/null 2>&1 || "$otty_bin" config set theme-dark claude-dark >/dev/null 2>&1 || true
  "$otty_bin" config set auto-theme-dark-mode true >/dev/null 2>&1 || true
  "$otty_bin" config reload >/dev/null 2>&1 || true
  echo "Installed and selected Claude Light / Claude Dark for Otty."
else
  echo "Installed theme files to $theme_dir."
  echo "Open Otty Settings -> Appearance, enable separated dark theme, then choose Claude Light and Claude Dark."
fi
