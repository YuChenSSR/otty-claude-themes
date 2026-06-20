# Claude Themes for Otty

Claude-inspired light and dark themes for the [Otty](https://otty.sh) terminal.

This repository contains two Otty theme files:

- `Claude Light`
- `Claude Dark`

The light palette is adapted from the Claude VS Code themes. The dark terminal ANSI palette is adapted from the Claude dark editor token colors because the upstream dark theme does not define terminal ANSI colors.

## One-line Install

Run this command:

```sh
curl -fsSL https://raw.githubusercontent.com/YuChenSSR/otty-claude-themes/main/install.sh | sh
```

The script downloads both themes into:

```text
~/.config/otty/themes/
```

If the Otty CLI is available, it also tries to set:

```toml
theme = "Claude Light"
theme-dark = "Claude Dark"
```

It can use `otty`, `otty-cli`, or the macOS app-bundled CLI at:

```text
/Applications/Otty.app/Contents/MacOS/otty-cli
```

For a more cautious install, inspect the script first:

```sh
curl -fsSL https://raw.githubusercontent.com/YuChenSSR/otty-claude-themes/main/install.sh -o install-otty-claude-themes.sh
sh install-otty-claude-themes.sh
```

## Install From a Clone

```sh
git clone https://github.com/YuChenSSR/otty-claude-themes.git
cd otty-claude-themes
./install.sh
```

When run from a clone, the installer copies the local files in `themes/` instead of downloading them.

## Otty UI Setup

If the script cannot change your Otty config automatically, select the themes in Otty:

```text
Settings -> Appearance
```

Enable:

```text
Use separated theme for dark mode
```

Then choose:

- Theme: `Claude Light`
- Dark Theme: `Claude Dark`

## Manual Install

Copy the theme files manually:

```sh
mkdir -p ~/.config/otty/themes
cp themes/claude-light.ottytheme ~/.config/otty/themes/
cp themes/claude-dark.ottytheme ~/.config/otty/themes/
```

Then select them in Otty:

```text
Settings -> Appearance
```

## Credits

Adapted for Otty from:

- [Lumidew.claude-color-theme](https://marketplace.visualstudio.com/items?itemName=Lumidew.claude-color-theme)
- [AuroralFrost/claude-light-theme](https://github.com/AuroralFrost/claude-light-theme)

## License

MIT. See [LICENSE](LICENSE).
