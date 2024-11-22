local config = function()
	local theme = require("lualine.themes.gruvbox")

	-- set bg transparency in all modes
	theme.normal.c.bg = nil
	theme.insert.c.bg = nil
	theme.visual.c.bg = nil
	theme.replace.c.bg = nil
	theme.command.c.bg = nil

	local colors = {
		red = '#ca1243',
		grey = '#a0a1a7',
		black = '#383a42',
		white = '#f3f3f3',
		light_green = '#83a598',
		orange = '#fe8019',
		green = '#8ec07c',
	  }

	local function process_sections(sections)
		for name, section in pairs(sections) do
		  local left = name:sub(9, 10) < 'x'
		  for pos = 1, name ~= 'lualine_z' and #section or #section - 1 do
			table.insert(section, pos * 2, { empty, color = { fg = colors.white, bg = colors.white } })
		  end
		  for id, comp in ipairs(section) do
			if type(comp) ~= 'table' then
			  comp = { comp }
			  section[id] = comp
			end
			comp.separator = left and { right = '' } or { left = '' }
		  end
		end
		return sections
	  end
	  
	  local function search_result()
		if vim.v.hlsearch == 0 then
		  return ''
		end
		local last_search = vim.fn.getreg('/')
		if not last_search or last_search == '' then
		  return ''
		end
		local searchcount = vim.fn.searchcount { maxcount = 9999 }
		return last_search .. '(' .. searchcount.current .. '/' .. searchcount.total .. ')'
	  end

	require("lualine").setup({
		options = {
			theme = theme,
			globalstatus = true,
			component_separators = '',
    		section_separators = { left = '', right = '' },
		},
		-- tabline = {
		-- 	lualine_a = { "mode" },
		-- 	lualine_b = { "buffers" },
		-- 	lualine_x = { "encoding", "fileformat", "filetype" },
		-- 	lualine_y = { "progress" },
		-- 	lualine_z = { "location" },
		-- },
		sections = process_sections {
			lualine_a = { 'mode' },
			lualine_b = {
			  'branch',
			  'diff',
			  {
				'diagnostics',
				source = { 'nvim' },
				sections = { 'error' },
				diagnostics_color = { error = { bg = colors.red, fg = colors.white } },
			  },
			  {
				'diagnostics',
				source = { 'nvim' },
				sections = { 'warn' },
				diagnostics_color = { warn = { bg = colors.orange, fg = colors.white } },
			  },
			  { 'filename', file_status = false, path = 1 },
			  { modified, color = { bg = colors.red } },
			  {
				'%w',
				cond = function()
				  return vim.wo.previewwindow
				end,
			  },
			  {
				'%r',
				cond = function()
				  return vim.bo.readonly
				end,
			  },
			  {
				'%q',
				cond = function()
				  return vim.bo.buftype == 'quickfix'
				end,
			  },
			},
			lualine_c = {},
			lualine_x = {},
			lualine_y = { search_result, 'filetype' },
			lualine_z = { '%l:%c', '%p%%/%L' },
		},
		inactive_sections = {
			lualine_c = { '%f %y %m' },
			lualine_x = {},
		},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}
