local map = vim.keymap.set
local api = vim.api

-- Insert Mode Navigation
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

-- Window and Pane Navigation
-- Normal Mode
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- Terminal Mode
map("t", "<C-h>", "wincmd h", { desc = "switch window left in terminal" })
map("t", "<C-j>", "wincmd j", { desc = "switch window down in terminal" })
map("t", "<C-k>", "wincmd k", { desc = "switch window up in terminal" })
map("t", "<C-l>", "wincmd l", { desc = "switch window right in terminal" })
map("t", "<C-x>", "<C-\\><C-N>", { desc = "escape terminal mode" })

-- TmuxNavigate (if tmux-navigator plugin is used)
map("n", "<C-h>", "TmuxNavigateLeft", { desc = "tmux navigate left" })
map("n", "<C-j>", "TmuxNavigateDown", { desc = "tmux navigate down" })
map("n", "<C-k>", "TmuxNavigateUp", { desc = "tmux navigate up" })
map("n", "<C-l>", "TmuxNavigateRight", { desc = "tmux navigate right" })

-- General Vim Operations
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "clear highlights" })
map("n", "<C-s>", "<cmd>w<CR>", { desc = "save file" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "copy whole file" })

-- Buffer Navigation
map("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "next buffer" })
map("n", "<leader>bp", "<cmd>bprevious<CR>", { desc = "previous buffer" })
map("n", "<leader>bb", "<cmd>e #<CR>", { desc = "switch to other buffer" })
map("n", "<leader>`", "<cmd>e #<CR>", { desc = "switch to other buffer" })

map("n", "<tab>", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })

map("n", "<leader>x", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

-- Window Management
map("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "split vertically" })
map("n", "<leader>sh", "<cmd>split<CR>", { desc = "split horizontally" })

-- Indentation
map("v", "<", "<gv", { desc = "shift indentation left" })
map("v", ">", ">gv", { desc = "shift indentation right" })

-- File Operations
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "new buffer" })
map("n", "<leader>pa", function()
  print(vim.fn.expand('%:p'))
end, { desc = "show full file path" })

-- Number Toggle
map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })

-- NvimTree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle" })
map("n", "<leader>m", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus" })
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle" })

-- Telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "live grep" })
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "find files" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "find buffers" })

-- Formatting
map("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "format file" })

-- Comments (using Comment.nvim or similar)
map("n", "<C-_>", "gcc", { desc = "toggle comment", remap = true })
map("v", "<C-_>", "gc", { desc = "toggle comment", remap = true })

-- Zen Mode (assuming TZ plugin is used)
api.nvim_set_keymap("n", "<leader>zn", ":TZNarrow<CR>", { desc = "zen narrow" })
api.nvim_set_keymap("v", "<leader>zn", ":'<,'>TZNarrow<CR>", { desc = "zen narrow selection" })
api.nvim_set_keymap("n", "<leader>sm", ":TZFocus<CR>", { desc = "zen focus" })
api.nvim_set_keymap("n", "<leader>zm", ":TZMinimalist<CR>", { desc = "zen minimalist" })
api.nvim_set_keymap("n", "<leader>za", ":TZAtaraxis<CR>", { desc = "zen ataraxis" })

-- Terminal
map("n", "<leader>h", function()
  require("nvchad.term").new { pos = "sp" }
end, { desc = "new horizontal terminal" })

map("n", "<leader>v", function()
  require("nvchad.term").new { pos = "vsp" }
end, { desc = "new vertical terminal" })

map({ "n", "t" }, "<A-v>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
end, { desc = "toggle vertical terminal" })

map({ "n", "t" }, "<A-h>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "toggle horizontal terminal" })

map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "toggle floating terminal" })

-- WhichKey
map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "show all keymaps" })
map("n", "<leader>wk", function()
  vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
end, { desc = "whichkey query lookup" })
