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
    }
}
