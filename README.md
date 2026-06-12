# dotfiles

Personal configuration repository for Linux desktop environments. This repo contains my settings and customizations for window management, terminal, status bars, shell, and utilities.

## Contents

- `bat/` — configuration for the `bat` file viewer with syntax highlighting
- `btop/` — configuration for the `btop` system monitor
- `dunst/` — notification daemon configuration
- `eza/` — configuration for the `eza` file listing utility
- `fastfetch/` — configuration for the `fastfetch` system info tool
- `hypr/` — Hyprland compositor configuration
- `kitty/` — Kitty terminal emulator configuration
- `opencode/` — configuration for the `opencode` editor or launcher
- `rofi/` — Rofi application launcher and menu themes
- `scripts/` — helper scripts and automation utilities
- `starship/` — Starship prompt configuration
- `swappy/` — configuration for the `swappy` screenshot editor
- `waybar/` — Waybar status bar configuration
- `yazi/` — configuration for the `yazi` terminal file explorer
- `zsh/` — Zsh shell configuration and plugins

## Usage

This repository is designed to be managed with GNU Stow. Each top-level directory is a stow package that can be symlinked into your home configuration directory.

Install and deploy with:

```bash
cd ~/repos/dotfiles
stow -Rv -t ~ */
```

Or deploy individual packages as needed:

```bash
stow hypr
stow zsh
```

If your dotfiles are in a different location, adjust the repository path accordingly.

## Notes

This repository is tailored for my personal Linux setup. Use it as a reference or starting point, but review the configuration files before applying them to a different system.