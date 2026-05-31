# dotfiles

Personal configuration repository for Linux desktop environments. This repo contains my settings and customizations for window management, terminal, status bars, shell, and utilities.

## Contents

- `dunst/` — notification daemon configuration
- `hypr/` — Hyprland compositor configuration
- `kitty/` — Kitty terminal emulator configuration
- `rofi/` — Rofi application launcher and menu themes
- `scripts/` — helper scripts and automation utilities
- `starship/` — Starship prompt configuration
- `waybar/` — Waybar status bar configuration
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