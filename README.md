# Claude Themes for Otty

Claude-inspired light and dark themes for the [Otty](https://otty.sh) terminal.

This repository contains two Otty theme files:

- `Claude Light`
- `Claude Dark`

The light palette is adapted from the Claude VS Code themes. The dark terminal ANSI palette is adapted from the Claude dark editor token colors because the upstream dark theme does not define terminal ANSI colors.

## Recommended: One-command Install

Recommended for most users:

```sh
curl -fsSL https://raw.githubusercontent.com/YuChenSSR/otty-claude-themes/main/install.sh | sh
```

That's it. The script installs both themes into:

```text
~/.config/otty/themes/
```

If the Otty CLI is available, it also selects the themes for you:

```toml
theme = "Claude Light"
theme-dark = "Claude Dark"
```

<br>

---

## Other Install Options

Use one of these if you want to inspect the script first, install from a local clone, or copy the files manually.

### Inspect Before Running

Download the installer first:

```sh
curl -fsSL https://raw.githubusercontent.com/YuChenSSR/otty-claude-themes/main/install.sh -o install-otty-claude-themes.sh
```

Then run it:

```sh
sh install-otty-claude-themes.sh
```

### Install From a Clone

```sh
git clone https://github.com/YuChenSSR/otty-claude-themes.git
cd otty-claude-themes
./install.sh
```

When run from a clone, the installer copies the local files in `themes/` instead of downloading them.

### Otty CLI Detection

The installer can use `otty`, `otty-cli`, or the macOS app-bundled CLI at:

```text
/Applications/Otty.app/Contents/MacOS/otty-cli
```

### Otty UI Setup

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

### Manual Install

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

## More Claude Themes

For Claude-inspired themes and app-specific setup notes across more apps, see
[Claude Theme Hub](https://github.com/YuChenSSR/claude-theme-hub).

## Credits

Adapted for Otty from:

- [Lumidew.claude-color-theme](https://marketplace.visualstudio.com/items?itemName=Lumidew.claude-color-theme)
- [AuroralFrost/claude-light-theme](https://github.com/AuroralFrost/claude-light-theme)

## License

MIT. See [LICENSE](LICENSE).
