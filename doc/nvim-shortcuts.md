# NeoVim Keyboard Shortcuts Reference

## Insert Mode Navigation
- `Ctrl + B`: Move to beginning of line
- `Ctrl + E`: Move to end of line
- `Ctrl + H`: Move left
- `Ctrl + L`: Move right
- `Ctrl + J`: Move down
- `Ctrl + K`: Move up

## Buffer Navigation
- `<leader>bn`: Next buffer
- `<leader>bp`: Previous buffer
- `<leader>bb`: Switch to other buffer
- ``` ` ``` (backtick): Switch to other buffer
- `Tab`: Go to next buffer
- `Shift + Tab`: Go to previous buffer
- `<leader>x`: Close current buffer

## File/Directory Navigation
- `Ctrl + N`: Toggle NvimTree
- `<leader>m`: Focus NvimTree
- `<leader>e`: Toggle NvimTree

## Window/Pane Navigation
### Normal Mode
- `Ctrl + H`: Switch window left
- `Ctrl + J`: Switch window down
- `Ctrl + K`: Switch window up
- `Ctrl + L`: Switch window right

### Terminal Mode
- `Ctrl + H`: Switch window left
- `Ctrl + J`: Switch window down
- `Ctrl + K`: Switch window up
- `Ctrl + L`: Switch window right
- `Ctrl + X`: Escape terminal mode

### Tmux Integration
- `Ctrl + H`: Navigate left (Tmux-aware)
- `Ctrl + J`: Navigate down (Tmux-aware)
- `Ctrl + K`: Navigate up (Tmux-aware)
- `Ctrl + L`: Navigate right (Tmux-aware)

## Window Management
- `<leader>sv`: Split window vertically
- `<leader>sh`: Split window horizontally

## File Operations
- `<leader>b`: Create new buffer
- `<leader>pa`: Show full file path

## Number Line Toggles
- `<leader>n`: Toggle line numbers
- `<leader>rn`: Toggle relative line numbers

## Indentation
- `<`: Shift selected text left in visual mode
- `>`: Shift selected text right in visual mode

## Editing
- `Ctrl + S`: Save file
- `Ctrl + C`: Copy entire file
- `Esc`: Clear highlights

## Zen Mode (TZ Plugin)
- `<leader>zn`: Narrow mode (normal and visual)
- `<leader>sm`: Focus mode
- `<leader>zm`: Minimalist mode
- `<leader>za`: Ataraxis mode

## Commenting
- `Ctrl + /`: Toggle comment (normal mode)
- `Ctrl + /`: Toggle comment (visual mode)

## Terminal
- `<leader>h`: New horizontal terminal
- `<leader>v`: New vertical terminal
- `Alt + V`: Toggle vertical terminal
- `Alt + H`: Toggle horizontal terminal
- `Alt + I`: Toggle floating terminal

## Telescope (Fuzzy Finder)
- `<leader>fw`: Live grep
- `<leader>ff`: Find files
- `<leader>fb`: Find buffers

## Formatting
- `<leader>fm`: Format file

## WhichKey
- `<leader>wK`: Show all keymaps
- `<leader>wk`: Lookup specific keymap

## Additional General Vim Shortcuts
### Text Navigation
- `w`: Move forward by word
- `b`: Move backward by word
- `0`: Move to start of line
- `$`: Move to end of line
- `gg`: Go to first line
- `G`: Go to last line

### Moving Between Lines
#### Page up and down
- `ctrl + b` to move a page screen back or “up”
- `ctrl + f` to move a page screen front or “down”
- `ctrl + u` to move a ½ page screen up
- `ctrl + d` to move a ½ page screen down
- `ctrl + y` to move the screen _up_ one line
- `ctrl + e` to move the screen _down_ one line
- `z + z` to move the current line to the _center_ of the screen
- `z + t` to move the current line to the _top_ of the screen
- `z + b` to move the current line to the _bottom_ of the screen


### Visual Mode
- `v`: Enter visual mode
- `V`: Enter visual line mode
- `Ctrl + v`: Enter visual block mode

### Editing
- `dd`: Delete current line
- `yy`: Yank (copy) current line
- `p`: Paste after cursor
- `P`: Paste before cursor
- `u`: Undo
- `Ctrl + r`: Redo

### Search and Replace
- `/`: Search forward
- `?`: Search backward
- `n`: Next search result
- `N`: Previous search result
- `:%s/old/new/g`: Replace all occurrences in file

### Marks and Jumps
- `ma`: Set mark 'a'
- `` `a ``: Jump to mark 'a'
- `''`: Jump to last edit position

Note: Many of these shortcuts can be customized in your NeoVim configuration. Always refer to your specific setup.
