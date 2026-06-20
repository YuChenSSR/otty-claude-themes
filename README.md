# Claude Themes for Otty

Claude-inspired light and dark themes for the [Otty](https://otty.sh) terminal.

This repository contains two Otty theme files:

- `Claude Light`
- `Claude Dark`

The light palette is adapted from the Claude VS Code themes. The dark terminal ANSI palette is adapted from the Claude dark editor token colors because the upstream dark theme does not define terminal ANSI colors.

## Install

Clone the repository and run the installer:

```sh
git clone https://github.com/YuChenSSR/otty-claude-themes.git
cd otty-claude-themes
./install.sh
```

The installer copies both `.ottytheme` files into:

```text
~/.config/otty/themes/
```

It also tries to set:

```toml
theme = "Claude Light"
theme-dark = "Claude Dark"
```

If your Otty CLI is not installed into `PATH`, install it from Otty:

```text
Settings -> Shell -> Install CLI
```

On macOS, the installer can also use:

```text
/Applications/Otty.app/Contents/MacOS/otty-cli
```

## Install Without Cloning

If your Otty CLI is available, import the themes directly from GitHub:

```sh
otty theme import https://raw.githubusercontent.com/YuChenSSR/otty-claude-themes/main/themes/claude-light.ottytheme --overwrite
otty theme import https://raw.githubusercontent.com/YuChenSSR/otty-claude-themes/main/themes/claude-dark.ottytheme --overwrite
otty config set theme "Claude Light"
otty config set theme-dark "Claude Dark"
otty config reload
```

Then open Otty and enable dark/light switching:

```text
Settings -> Appearance -> Use separated theme for dark mode
```

Choose:

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

Enable `Use separated theme for dark mode`, set the light theme to `Claude Light`, and set the dark theme to `Claude Dark`.

## Credits

Adapted for Otty from:

- [Lumidew.claude-color-theme](https://marketplace.visualstudio.com/items?itemName=Lumidew.claude-color-theme)
- [AuroralFrost/claude-light-theme](https://github.com/AuroralFrost/claude-light-theme)

## License

MIT. See [LICENSE](LICENSE).
