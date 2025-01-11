local color = require("rose-pine.palette")
local inactive_bg = ''
local active_bg = ''
local separator_fg = color.surface

return {
    {
        'nvim-lualine/lualine.nvim',
        event = "ColorScheme",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            options = {
                section_separators = { left = '', right = '' },
                -- component_separators = { left = '', right = '' }
                component_separators = '',
                globalstatus = true,
			},
            sections = {
                lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
                lualine_b = { 'filename', 'branch' },
                lualine_c = {
                    '%=', --[[ add your center compoentnts here in place of this comment ]]
                },
                lualine_x = {},
                lualine_y = { 'filetype', 'progress' },
                lualine_z = {
                    { 'location', separator = { right = '' }, left_padding = 2 },
                },
            },
            inactive_sections = {
                lualine_a = { 'filename' },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = { 'location' },
            },
            tabline = {},
            extensions = {},
        }
    },
    {
        'akinsho/bufferline.nvim', 
        dependencies = 'nvim-tree/nvim-web-devicons',
        opts = {
            options = {
                -- style_preset = require('bufferline').style_preset.no_italic,
                separator_style = "thick",
            },
            highlights = {
                fill = { fg = '', bg = '' },
                -- buffers
                background = { bg = inactive_bg },
                buffer_visible = { fg = color.subtle, bg = inactive_bg },
                buffer_selected = { fg = color.text, bg = active_bg, bold = true, italic = false },
                -- duplicate
                duplicate_selected = { fg = color.text, bg = active_bg, bold = true, italic = false },
                duplicate_visible = { fg = color.surface, bg = inactive_bg, bold = true, italic = false },
                duplicate = { fg = color.surface, bg = inactive_bg, bold = true, italic = false },
                -- tabs
                tab = { fg = color.surface, bg = inactive_bg },
                tab_selected = { fg = color.foam, bg = active_bg, bold = true, italic = false },
                tab_separator = { fg = separator_fg, bg = inactive_bg },
                tab_separator_selected = { fg = separator_fg, bg = active_bg },

                tab_close = { fg = color.rose, bg = inactive_bg },
                indicator_visible = { fg = color.gold, bg = inactive_bg, bold = true, italic = false },
                indicator_selected = { fg = color.gold, bg = active_bg, bold = true, italic = false },
                -- separators
                separator = { fg = separator_fg, bg = inactive_bg },
                separator_visible = { fg = separator_fg, bg = inactive_bg },
                separator_selected = { fg = separator_fg, bg = active_bg },
                offset_separator = { fg = separator_fg, bg = active_bg },
                -- close buttons
                close_button = { fg = color.surface, bg = inactive_bg },
                close_button_visible = { fg = color.surface, bg = inactive_bg },
                close_button_selected = { fg = color.rose, bg = active_bg },
            }
        }
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            indent = { char = "│", },
            scope = {
                enabled = true,
            }
        },
    },
    {
        "lewis6991/gitsigns.nvim",
        opts = {},
    },
    {
        "folke/noice.nvim",
        enabled = true,
        lazy = false,
        event = { "BufRead", "BufNewFile" },
        dependencies = { 
            {
                "rcarriga/nvim-notify",
                lazy = true,
                event = "VeryLazy",
                config = function()
                    local notify = require "notify"
                    notify.setup {
                        -- "fade", "slide", "fade_in_slide_out", "static"
                        stages = "static", -- performance related
                        on_open = nil,
                        on_close = nil,
                        timeout = 5000,
                        fps = 1,
                        render = "default",
                        background_colour = "Normal",
                        max_width = math.floor(vim.api.nvim_win_get_width(0) / 2),
                        max_height = math.floor(vim.api.nvim_win_get_height(0) / 4),
                        -- minimum_width = 50,
                        -- ERROR > WARN > INFO > DEBUG > TRACE
                        level = "TRACE",
                    }
                    vim.notify = notify
                end,
            },
            "MunifTanjim/nui.nvim",
        },
        opts = {
            lsp = {
                progress = {
                    enabled = false, -- performance related
                },
            },
            presets = {
                bottom_search = false,
                command_palette = true,
                long_message_to_split = true,
                inc_rename = false,
                lsp_doc_border = true,
            },
            messages = {
                enabled = true,
                view = "notify",
                view_error = "notify",
                view_warn = "notify",
                view_history = "messages",
                view_search = "virtualtext",
            },
            health = {
                checker = false,
            },
        },
    },
    {
        "https://gitlab.com/HiPhish/rainbow-delimiters.nvim.git",
    },
    {
        "nvim-zh/colorful-winsep.nvim",
        config = true,
        event = { "WinLeave" },
        opts = {
            -- highlight for Window separator
            hi = {
                bg = "",
                fg = require("rose-pine.palette").iris,
            },
            -- This plugin will not be activated for filetype in the following table.
            no_exec_files = { "packer", "TelescopePrompt", "mason", "CompetiTest", "NvimTree" },
            -- Symbols for separator lines, the order: horizontal, vertical, top left, top right, bottom left, bottom right.
            -- symbols = { "━", "┃", "┏", "┓", "┗", "┛" },
            symbols = { "─", "│", "┌", "┐", "└", "┘" },
            -- #70: https://github.com/nvim-zh/colorful-winsep.nvim/discussions/70
            only_line_seq = true,
            -- Smooth moving switch
            smooth = false,
            exponential_smoothing = true,
            anchor = {
                left = { height = 1, x = -1, y = -1 },
                right = { height = 1, x = -1, y = 0 },
                up = { width = 0, x = -1, y = 0 },
                bottom = { width = 0, x = 1, y = 0 },
            },
            light_pollution = function(lines) end,
        },
    },
}
