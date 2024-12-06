-- Create a single autocmd group
local general_group = vim.api.nvim_create_augroup("GeneralAutoCmds", { clear = true })

-- Auto-format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  group = general_group,
  callback = function(args)
    local efm = vim.lsp.get_active_clients({ name = "efm" })
    if not vim.tbl_isempty(efm) then
      vim.lsp.buf.format({ name = "efm", async = true })
    end
  end,
})

-- File-related actions after UIEnter and buffer events
vim.api.nvim_create_autocmd({ "UIEnter", "BufReadPost", "BufNewFile" }, {
  group = general_group,
  callback = function(args)
    local file = vim.api.nvim_buf_get_name(args.buf)
    local buftype = vim.api.nvim_get_option_value("buftype", { buf = args.buf })

    if not vim.g.ui_entered and args.event == "UIEnter" then
      vim.g.ui_entered = true
    end

    if file ~= "" and buftype ~= "nofile" and vim.g.ui_entered then
      vim.api.nvim_exec_autocmds("User", { pattern = "FilePost", modeline = false })

      vim.schedule(function()
        vim.api.nvim_exec_autocmds("FileType", {})

        if vim.g.editorconfig then
          require("editorconfig").config(args.buf)
        end
      end)
    end
  end,
})
