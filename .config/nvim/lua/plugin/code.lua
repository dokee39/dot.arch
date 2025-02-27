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
        opts = {
            enable_check_bracket_line = false,
        },
    },
    {
        "Mythos-404/xmake.nvim",
        cond = not vim.g.vscode,
        lazy = true,
        event = "BufReadPost",
        opts = {
        },
    },
}
