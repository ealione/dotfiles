-- A slightly altered version of catppucchin custom_colors
local custom_colors = {
   text = '#cdd6f4',
   subtext1 = "#011423",
   subtext0 = "#011423",
   overlay2 = "#011723",
   overlay1 = "#CBE0F0",
   overlay0 = "#44FFB1",
   surface2 = "#214969",
   surface1 = "#FFE073",
   surface0 = "#4c566a",
   base = '#1f1f28',
   mantle = '#181825',
   crust = '#11111b',
}

local colorscheme = {
   foreground = "#d8dee9",
   background = "#2e3440",
   cursor_bg = "#eceff4",
   cursor_border = "#eceff4",
   cursor_fg = "#282828",
   selection_bg = "#eceff4",
   selection_fg = "#4c566a",
   ansi = {"#3b4252","#bf616a","#a3be8c","#ebcb8b","#81a1c1","#b48ead","#88c0d0","#e5e9f0"},
   brights = {"#4c566a","#bf616a","#a3be8c","#ebcb8b","#81a1c1","#b48ead","#8fbcbb","#eceff4"},
   tab_bar = {
      background = 'rgba(0, 0, 0, 0.4)',
      active_tab = {
         bg_color = custom_colors.surface2,
         fg_color = custom_colors.text,
      },
      inactive_tab = {
         bg_color = custom_colors.surface0,
         fg_color = custom_colors.subtext1,
      },
      inactive_tab_hover = {
         bg_color = custom_colors.surface0,
         fg_color = custom_colors.text,
      },
      new_tab = {
         bg_color = custom_colors.base,
         fg_color = custom_colors.text,
      },
      new_tab_hover = {
         bg_color = custom_colors.mantle,
         fg_color = custom_colors.text,
         italic = true,
      },
   },
   visual_bell = custom_colors.surface0,
   indexed = {
      [16] = custom_colors.peach,
      [17] = custom_colors.rosewater,
   },
   scrollbar_thumb = custom_colors.surface2,
   split = custom_colors.overlay0,
   compose_cursor = custom_colors.flamingo,
}

--colorscheme = {
--	foreground = "#CBE0F0",
--	background = "#011423",
--	cursor_bg = "#47FF9C",
--	cursor_border = "#47FF9C",
--	cursor_fg = "#011423",
--	selection_bg = "#033259",
--	selection_fg = "#CBE0F0",
--	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
--	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
--}

return colorscheme
