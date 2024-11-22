local wezterm = require("wezterm")
local config = wezterm.config_builder()

local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")

tabline.setup(
    {
        options = {
            icons_enabled = true,
            theme = "nord",
            color_overrides = {},
            section_separators = {
                left = wezterm.nerdfonts.ple_right_half_circle_thick,
                right = wezterm.nerdfonts.ple_left_half_circle_thick
            },
            component_separators = {
                left = wezterm.nerdfonts.ple_right_half_circle_thin,
                right = wezterm.nerdfonts.ple_left_half_circle_thin
            },
            tab_separators = {
                left = wezterm.nerdfonts.ple_right_half_circle_thick,
                right = wezterm.nerdfonts.ple_left_half_circle_thick
            }
        },
        sections = {
            tabline_a = {"mode"},
            tabline_b = {"workspace"},
            tabline_c = {" "},
            tab_active = {
                "index",
                {"parent", padding = 0},
                "/",
                {"cwd", padding = {left = 0, right = 1}},
                {"zoomed", padding = 0},
                {
                    "process",
                    process_to_icon = {
                        ["apt"] = wezterm.nerdfonts.dev_debian,
                        ["bash"] = wezterm.nerdfonts.cod_terminal_bash,
                        ["bat"] = wezterm.nerdfonts.md_bat,
                        ["cmd.exe"] = wezterm.nerdfonts.md_console_line,
                        ["curl"] = wezterm.nerdfonts.md_flattr,
                        ["debug"] = wezterm.nerdfonts.cod_debug,
                        ["default"] = wezterm.nerdfonts.md_application,
                        ["docker"] = wezterm.nerdfonts.linux_docker,
                        ["docker-compose"] = wezterm.nerdfonts.linux_docker,
                        ["git"] = wezterm.nerdfonts.dev_git,
                        ["go"] = wezterm.nerdfonts.md_language_go,
                        ["lazydocker"] = wezterm.nerdfonts.linux_docker,
                        ["lazygit"] = wezterm.nerdfonts.cod_github,
                        ["lua"] = wezterm.nerdfonts.seti_lua,
                        ["make"] = wezterm.nerdfonts.seti_makefile,
                        ["nix"] = wezterm.nerdfonts.linux_nixos,
                        ["node"] = wezterm.nerdfonts.md_nodejs,
                        ["npm"] = wezterm.nerdfonts.md_npm,
                        ["nvim"] = wezterm.nerdfonts.custom_neovim,
                        ["psql"] = wezterm.nerdfonts.dev_postgresql,
                        ["zsh"] = wezterm.nerdfonts.dev_terminal
                        -- and more...
                    }
                    -- process_to_icon is a table that maps process to icons
                }
            },
            tab_inactive = {"index", {"process", padding = {left = 0, right = 1}}},
            tabline_x = {"ram", "cpu"},
            tabline_y = {"datetime", "battery"},
            tabline_z = {"hostname"}
        },
        extensions = {}
    }
)

tabline.apply_to_config(config)

