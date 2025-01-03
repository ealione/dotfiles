# 🖥️ Personal Dotfiles & Configuration

## About
A comprehensive collection of my personal configurations for various development and terminal tools.

## Tools Configurations

### 1. WezTerm
A powerful terminal emulator with extensive customization options.

**Shortcuts Reference**: [WezTerm Keyboard Shortcuts](doc/wezterm-shortcuts.md)

### 2. NeoVim
Highly extensible text editor for developers.

**Shortcuts Reference**: [NeoVim Keyboard Shortcuts](doc/nvim-shortcuts.md)

## Detailed Shortcut References

| Tool | Shortcut Documentation |
|------|------------------------|
| WezTerm | [Comprehensive WezTerm Shortcuts](doc/wezterm-shortcuts.md) |
| NeoVim | [Complete NeoVim Keyboard Shortcuts](doc/nvim-shortcuts.md) |
| Tmux | [Tmux Navigation & Control](doc/tmux-shortcuts.md) |
| Zellij | [Shell & Terminal Shortcuts](doc/zellij-shortcuts.md) |

## Setup

### Prerequisites
- NeoVim 0.8+
- WezTerm 
- Tmux (optional)

### Installation
```bash
git clone https://github.com/ealione/dotfiles.git
cp -a ./{dotfile} ~/.conf/
```

For gnome terminal profiles you can export and backup your existing profiles:

```bash
$ dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.dconf
```

and load new ones:

```bash
$ dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf
```

## Customization
Feel free to fork and adapt these configurations to your workflow.

## License
MIT License
