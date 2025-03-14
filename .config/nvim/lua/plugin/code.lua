return {
    {
        'brenoprata10/nvim-highlight-colors',
        -- cond = not vim.g.vscode,
        opts = {
            render = 'virtual',
            virtual_symbol = '',
            virtual_symbol_suffix = '',
            virtual_symbol_position = 'eol',
        }
    },
    {
        'numToStr/Comment.nvim',
        -- cond = not vim.g.vscode,
        event = "VeryLazy",
        opts = {
            ---Add a space b/w comment and the line
            padding = true,
            ---Whether the cursor should stay at its position
            sticky = true,
            ---Lines to be ignored while (un)comment
            ignore = nil,
            ---LHS of toggle mappings in NORMAL mode
            toggler = {
                ---Line-comment toggle keymap
                line = 'gcc',
                ---Block-comment toggle keymap
                block = 'gbc',
            },
            ---LHS of operator-pending mappings in NORMAL and VISUAL mode
            opleader = {
                ---Line-comment keymap
                line = 'gc',
                ---Block-comment keymap
                block = 'gb',
            },
            ---LHS of extra mappings
            extra = {
                ---Add comment on the line above
                above = 'gcO',
                ---Add comment on the line below
                below = 'gco',
                ---Add comment at the end of line
                eol = 'gcA',
            },
            ---Enable keybindings
            ---NOTE: If given `false` then the plugin won't create any mappings
            mappings = {
                ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
                basic = true,
                ---Extra mapping; `gco`, `gcO`, `gcA`
                extra = false,
            },
            ---Function to call before (un)comment
            pre_hook = nil,
            ---Function to call after (un)comment
            post_hook = nil,
        }
    },
    {
        "windwp/nvim-autopairs",
        -- cond = not vim.g.vscode,
        event = "VeryLazy",
        config = function()
            local function get_relative_line(offset)
                local line = vim.api.nvim_win_get_cursor(0)[1]
                local target = line + offset
                return vim.api.nvim_buf_get_lines(0, target - 1, target, false)[1]
            end

            local struct_or_class = function()
                local line = get_relative_line(0)
                local previous_line = get_relative_line(-1)

                if vim.fn.match(line, "struct") ~= -1 or vim.fn.match(line, "class") ~= -1 then
                    return true
                end

                if vim.fn.match(previous_line, "struct") ~= -1 or vim.fn.match(previous_line, "class") ~= -1 then
                    return true
                end

                return false -- fixed
            end

            local npairs = require("nvim-autopairs")
            local rule = require("nvim-autopairs.rule")
            local cond = require("nvim-autopairs.conds")

            npairs.setup({
                enable_check_bracket_line = false,
            })

            npairs.add_rules({
                rule("{", "};", { "cpp", "c" }):with_pair(struct_or_class),
            })
            return
        end,
    },
    {
        "Mythos-404/xmake.nvim",
        cond = not vim.g.vscode,
        lazy = true,
        event = "BufReadPost",
        opts = {
            on_save = {
                reload_project_info = true,
                lsp_compile_commands = {
                    enable = false,
                    output_dir = "build",
                },
            },
        },
    },
    {
        "davidmh/mdx.nvim",
        cond = not vim.g.vscode,
        config = true,
        dependencies = { "nvim-treesitter/nvim-treesitter" }
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        cond = not vim.g.vscode,
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' },
        opts = {},
    },
    {
        "3rd/image.nvim",
        cond = not vim.g.vscode,
        opts = {}
    },
}
