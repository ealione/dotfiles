# NeoVim Keyboard Shortcuts Reference

## Buffer Navigation
- `<leader>bn`: Next buffer
- `<leader>bp`: Previous buffer
- `<leader>bb`: Switch to other buffer
- `<leader>```: Switch to other buffer

## File/Directory Navigation
- `<leader>m`: Focus NvimTree
- `<leader>e`: Toggle NvimTree

## Window/Pane Navigation
### Normal Mode
- `Ctrl + H`: Navigate to left window
- `Ctrl + J`: Navigate to down window
- `Ctrl + K`: Navigate to up window
- `Ctrl + L`: Navigate to right window

### Terminal Mode
- `Ctrl + H`: Navigate to left window
- `Ctrl + J`: Navigate to down window
- `Ctrl + K`: Navigate to up window
- `Ctrl + L`: Navigate to right window

### Tmux Integration
- `Ctrl + H`: Navigate left (Tmux-aware)
- `Ctrl + J`: Navigate down (Tmux-aware)
- `Ctrl + K`: Navigate up (Tmux-aware)
- `Ctrl + L`: Navigate right (Tmux-aware)

## Window Management
- `<leader>sv`: Split window vertically
- `<leader>sh`: Split window horizontally

## Indentation
- `<`: Shift selected text left in visual mode
- `>`: Shift selected text right in visual mode

## File Path
- `<leader>pa`: Show full file path

## Zen Mode
- `<leader>zn`: Narrow mode (normal and visual)
- `<leader>sm`: Focus mode
- `<leader>zm`: Minimalist mode
- `<leader>za`: Ataraxis mode

## Commenting
- `Ctrl + /`: Toggle comment (normal mode)
- `Ctrl + /`: Toggle comment (visual mode)

## Additional Useful NeoVim Shortcuts

### General Editing
- `dd`: Delete current line
- `yy`: Yank (copy) current line
- `p`: Paste after cursor
- `P`: Paste before cursor
- `u`: Undo
- `Ctrl + r`: Redo

### Text Navigation
- `w`: Move forward by word
- `b`: Move backward by word
- `0`: Move to start of line
- `$`: Move to end of line
- `gg`: Go to first line
- `G`: Go to last line

### Visual Mode
- `v`: Enter visual mode
- `V`: Enter visual line mode
- `Ctrl + v`: Enter visual block mode

### Search and Replace
- `/`: Search forward
- `?`: Search backward
- `n`: Next search result
- `N`: Previous search result
- `:%s/old/new/g`: Replace all occurrences in file

### Splits and Tabs
- `Ctrl + w + v`: Create vertical split
- `Ctrl + w + s`: Create horizontal split
- `Ctrl + w + q`: Close current split
- `gt`: Next tab
- `gT`: Previous tab

### Code Editing
- `>>`: Indent line
- `<<`: Unindent line
- `==`: Auto-indent line

### Marks and Jumps
- `ma`: Set mark 'a'
- `` `a ``: Jump to mark 'a'
- `''`: Jump to last edit position

### Macros
- `qa`: Start recording macro in register 'a'
- `q`: Stop recording
- `@a`: Play macro from register 'a'

### Advanced Movement
- `%`: Jump to matching bracket
- `*`: Search for word under cursor
- `#`: Reverse search for word under cursor

## Plugin-Specific Shortcuts
Note: Actual shortcuts may vary based on installed plugins

- LSP Shortcuts
  - `gd`: Go to definition
  - `gr`: Show references
  - `K`: Show hover information

- Telescope (Fuzzy Finder)
  - `<leader>ff`: Find files
  - `<leader>fg`: Live grep
  - `<leader>fb`: Buffer search

- Git Integration
  - `<leader>gs`: Git status
  - `<leader>gc`: Git commit
  - `<leader>gp`: Git push

Remember that many of these shortcuts can be customized in your NeoVim configuration.
