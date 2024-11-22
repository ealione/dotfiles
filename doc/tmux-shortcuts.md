# Tmux Shortcuts Reference

## Global Configuration
- Prefix Key: `Ctrl + a`
- Vi Mode for Navigation: Enabled
- Base Index: Windows and Panes start at 1
- Terminal: `xterm-256color`

## Pane Navigation
### With Prefix
- `h`: Select Pane Left
- `j`: Select Pane Down
- `k`: Select Pane Up
- `l`: Select Pane Right

### Without Prefix
- `Alt + Left`: Select Pane Left
- `Alt + Right`: Select Pane Right
- `Alt + Up`: Select Pane Up
- `Alt + Down`: Select Pane Down

## Pane Resizing
- `Ctrl + h`: Resize Left (5 units)
- `Ctrl + j`: Resize Down (5 units)
- `Ctrl + k`: Resize Up (5 units)
- `Ctrl + l`: Resize Right (5 units)

## Window Management
### Navigation
- `Alt + H`: Previous Window
- `Alt + L`: Next Window

### Window Manipulation
- `Ctrl + Shift + Left`: Swap Window Left
- `Ctrl + Shift + Right`: Swap Window Right

## Copy Mode
- `v`: Begin Selection
- `Ctrl + v`: Toggle Rectangle Selection
- `y`: Copy Selection and Exit

## Splitting Panes
- `"`: Split Horizontal (in current path)
- `%`: Split Vertical (in current path)

## Utility
- `r`: Reload Tmux Configuration
- `o`: Open Current Directory
- `e`: Kill All Panes Except Current

## Plugins
- Catppuccin Theme
- Tmux Plugin Manager (TPM)
- Vim Tmux Navigator
- Tmux Sensible
- Tmux Yank

## Advanced Settings
- Status Bar: Bottom, Black Background
- Pane Styling: Custom Colors
- History Limit: 64,096 Lines
- Escape Time: 10ms
- Dynamic Title Adaptation

## Pro Tips
- Use `Ctrl + a` as Prefix Key
- Customize keybindings in `~/.config/tmux/tmux.conf`
- Install TPM Plugins with `Prefix + I`

# Comprehensive Tmux Shortcuts Reference

## Session Management
- `tmux new`: Create new session
- `tmux new -s [name]`: Create named session
- `tmux ls`: List sessions
- `tmux attach`: Attach to last session
- `tmux attach -t [name]`: Attach to specific session
- `tmux switch -t [name]`: Switch to session
- `tmux rename-session -t [old] [new]`: Rename session
- `tmux kill-session -t [name]`: Close session

## Prefix Commands (Default `Ctrl + b`, Your Config uses `Ctrl + a`)
### Session Control
- `Prefix + d`: Detach from session
- `Prefix + $`: Rename current session
- `Prefix + s`: List sessions
- `Prefix + (`: Previous session
- `Prefix + )`: Next session

### Window Management
- `Prefix + c`: Create new window
- `Prefix + ,`: Rename current window
- `Prefix + w`: List windows
- `Prefix + n`: Next window
- `Prefix + p`: Previous window
- `Prefix + [number]`: Switch to window by number
- `Prefix + f`: Find window
- `Prefix + &`: Close current window

### Pane Operations
- `Prefix + %`: Split vertically
- `Prefix + "`: Split horizontally
- `Prefix + o`: Cycle through panes
- `Prefix + q`: Show pane numbers
- `Prefix + x`: Close current pane
- `Prefix + z`: Toggle pane zoom
- `Prefix + {`: Move pane left
- `Prefix + }`: Move pane right
- `Prefix + space`: Toggle pane layouts

### Copy Mode
- `Prefix + [`: Enter copy mode
- `Prefix + ]`: Paste contents
- `v` (in copy mode): Start selection
- `y` (in copy mode): Copy selection
- `q`: Exit copy mode

### Resizing Panes
- `Prefix + Ctrl + [arrow]`: Resize in arrow direction
- `Prefix + Alt + [arrow]`: Fine-grained resize

### Advanced Operations
- `Prefix + :`: Command prompt
- `Prefix + ?`: List keybindings
- `Prefix + i`: Install TPM Plugins
- `Prefix + r`: Reload configuration

## Command Line Operations
- `tmux source-file ~/.tmux.conf`: Reload config
- `tmux kill-server`: Terminate all tmux sessions

## Special Keybindings (Your Configuration)
- `Alt + [Arrow]`: Pane Navigation
- `Alt + H/L`: Previous/Next Window
- `Ctrl + Shift + Left/Right`: Swap Windows
- `Ctrl + a + r`: Reload Tmux Configuration

## Vim Integration
- Vi-style movement in copy mode
- `hjkl` for navigation
- Rectangle selection support

## Recommended Workflow
1. Create session with name
2. Create windows for different tasks
3. Split panes as needed
4. Use prefix commands for management
5. Leverage vi-mode for efficiency

## Troubleshooting
- Check `~/.tmux.conf` for custom bindings
- Use `tmux info` for current session details
