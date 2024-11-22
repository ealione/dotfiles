# WezTerm Keyboard Shortcuts Reference

## General/Misc Shortcuts
- `F1`: Activate Copy Mode
- `F2`: Activate Command Palette
- `F3`: Show Launcher
- `F4`: Show Fuzzy Launcher (Tabs)
- `F5`: Show Fuzzy Workspaces Launcher
- `F11`: Toggle Fullscreen
- `F12`: Show Debug Overlay

## Modifier Keys
- `SUPER` is set dynamically:
  - On macOS: `SUPER` = Command Key
  - On Windows/Linux: `SUPER` = Alt Key (to avoid conflicts with Windows key)

## Cursor Movement
- `Super + LeftArrow`: Move to line start
- `Super + RightArrow`: Move to line end
- `Super + Backspace`: Delete to line start

## Copy and Paste
- `Ctrl + Shift + C`: Copy to Clipboard
- `Ctrl + Shift + V`: Paste from Clipboard

## Tab Management
### Tab Creation/Closing
- `Super + T`: Spawn new default tab
- `Super + Ctrl + T`: Spawn new WSL Ubuntu tab
- `Super + Ctrl + W`: Close current tab (without confirmation)

### Tab Navigation
- `Super + [`: Previous tab
- `Super + ]`: Next tab
- `Super + Ctrl + [`: Move tab left
- `Super + Ctrl + ]`: Move tab right

### Tab Titles
- `Super + 0`: Manually update tab title
- `Super + Ctrl + 0`: Reset tab title
- `Super + 9`: Toggle tab bar visibility

## Window Management
- `Super + N`: Spawn new window
- `Super + -`: Decrease window size by 50 pixels
- `Super + =`: Increase window size by 50 pixels

## Background Controls
- `Super + /`: Random backdrop
- `Super + ,`: Cycle backdrop backward
- `Super + .`: Cycle backdrop forward
- `Super + Ctrl + /`: Input selector for specific backdrop
- `Super + B`: Toggle backdrop focus

## Pane Management
### Pane Creation
- `Super + \`: Split pane vertically
- `Super + Ctrl + \`: Split pane horizontally

### Pane Navigation
- `Super + Ctrl + K`: Move to pane above
- `Super + Ctrl + J`: Move to pane below
- `Super + Ctrl + H`: Move to pane left
- `Super + Ctrl + L`: Move to pane right
- `Super + Ctrl + P`: Swap panes

### Pane Actions
- `Super + Enter`: Toggle pane zoom
- `Super + W`: Close current pane (without confirmation)

## Scrolling
- `Super + U`: Scroll up 5 lines
- `Super + D`: Scroll down 5 lines
- `PageUp`: Scroll up 3/4 page
- `PageDown`: Scroll down 3/4 page

## URL Handling
- `Super + Ctrl + U`: Quick select and open URLs

## Session Management (using resurrect plugin)
- `Super + Alt + W`: Save workspace state
- `Super + Alt + Shift + W`: Save window state
- `Super + Alt + Shift + T`: Save tab state
- `Super + Alt + Shift + S`: Save workspace and window state
- `Super + Alt + Shift + R`: Fuzzy load saved session

## Leader Key Modes
### Font Resizing (`Leader + F`)
- `K`: Increase font size
- `J`: Decrease font size
- `R`: Reset font size
- `Escape/Q`: Exit font resize mode

### Pane Resizing (`Leader + P`)
- `K`: Resize pane up
- `J`: Resize pane down
- `H`: Resize pane left
- `L`: Resize pane right
- `Escape/Q`: Exit pane resize mode

## Mouse Bindings
- `Ctrl + Left Click`: Open link under mouse cursor
