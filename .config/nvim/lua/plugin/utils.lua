return {
    {
        -- "rhysd/accelerated-jk",
        "rainbowhxch/accelerated-jk.nvim",
        -- cond = not vim.g.vscode,
        keys = {
            { "j", "<Plug>(accelerated_jk_gj)" },
            { "k", "<Plug>(accelerated_jk_gk)" },
        },
    },
    {
        "DanilaMihailov/beacon.nvim",
        cond = not vim.g.vscode,
    },
    {
        "folke/persistence.nvim",
        cond = not vim.g.vscode,
        keys = {
            { "<leader>a", function() require("persistence").load() end },
        },
        opts = {},
    },
    {
        "ethanholz/nvim-lastplace",
        cond = not vim.g.vscode,
        config = true,
    },
    {
        "folke/flash.nvim",
        -- cond = not vim.g.vscode,
        event = "VeryLazy",
        keys = {
            {
                "s",
                mode = { "n", "x", "o" },
                function()
                    require("flash").jump()
                end,
                desc = "Flash",
            },
            {
                "S",
                mode = { "n", "o", "x" },
                function()
                    require("flash").treesitter()
                end,
                desc = "Flash Treesitter",
            },
            {
                "r",
                mode = "o",
                function()
                    require("flash").remote()
                end,
                desc = "Remote Flash",
            },
            {
                "R",
                mode = { "o", "x" },
                function()
                    require("flash").treesitter_search()
                end,
                desc = "Flash Treesitter Search",
            },
            {
                "<c-s>",
                mode = { "c" },
                function()
                    require("flash").toggle()
                end,
                desc = "Toggle Flash Search",
            },
        },
        opts = {
        },
    },
    {
        'echasnovski/mini.ai',
        cond = not vim.g.vscode,
        event = "VeryLazy",
        dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
        opts = function()
            local ai = require('mini.ai')
            return {
                n_lines = 300,
                custom_textobjects = {
                    f = ai.gen_spec.treesitter({ a = '@function.outer', i = '@function.inner' }, {}),
                    p = ai.gen_spec.treesitter({ a = '@parameter.outer', i = '@parameter.inner' }, {}),
                    c = ai.gen_spec.treesitter({ a = '@class.outer', i = '@class.inner' }, {}),
                },
                -- Disable error feedback.
                silent = true,
                -- Don't use the previous or next text object.
                search_method = 'cover',
                mappings = {
                    -- Disable next/last variants.
                    around_next = '',
                    inside_next = '',
                    around_last = '',
                    inside_last = '',
                    goto_left = '[',
                    goto_right = ']',
                },
            }
        end,
    },
    {
        "max397574/better-escape.nvim",
        cond = not vim.g.vscode,
        lazy = true,
        event = { "InsertEnter" },
        config = function()
            require("better_escape").setup {
                timeout = vim.o.timeoutlen,
                default_mappings = false,
                mappings = {
                    -- n = {
                    --     f = { d = "<C-v>i" },
                    --     d = {
                    --         f = "<C-v>i",
                    --         s = "<C-v>a",
                    --     },
                    --     s = { d = "<C-v>a" },
                    -- },
                    i = {
                        j = { k = "<Esc>" },
                        k = { j = "<Esc>" },
                        -- f = { d = "<Esc><C-v>i" },
                        -- d = {
                        --     f = "<Esc><C-v>i",
                        --     s = "<Esc><C-v>a",
                        -- },
                        -- s = { d = "<Esc><C-v>a" },
                    },
                },
            }
        end,
    },
    {
        "roobert/search-replace.nvim",
        cond = not vim.g.vscode,
        lazy = true,
        cmd = {
            "SearchReplaceSingleBufferVisualSelection",
            "SearchReplaceSingleBufferOpen",
            "SearchReplaceWithinVisualSelection",
            "SearchReplaceWithinVisualSelectionCWord",
            "SearchReplaceSingleBufferSelections",
            "SearchReplaceSingleBufferCWord",
            "SearchReplaceSingleBufferCWORD",
            "SearchReplaceSingleBufferCExpr",
            "SearchReplaceSingleBufferCFile",
            "SearchReplaceMultiBufferSelections",
            "SearchReplaceMultiBufferOpen",
            "SearchReplaceMultiBufferCWord",
            "SearchReplaceMultiBufferCWORD",
            "SearchReplaceMultiBufferCExpr",
            "SearchReplaceMultiBufferCFile",
        },
        keys = {
            { mode = "n", "<leader>ro",  "<CMD>SearchReplaceSingleBufferOpen<CR>",  { desc = "[o]pen" } },
            { mode = "n", "<leader>rw",  "<CMD>SearchReplaceSingleBufferCWord<CR>", { desc = "[w]ord" } },
            { mode = "n", "<leader>rbo", "<CMD>SearchReplaceMultiBufferOpen<CR>",   { desc = "[o]pen" } },
            { mode = "n", "<leader>rbw", "<CMD>SearchReplaceMultiBufferCWord<CR>",  { desc = "[w]ord" } },
        },
        opts = {
            default_replace_single_buffer_options = "gcI",
            default_replace_multi_buffer_options = "egcI",
        },
    },
    { -- curse leave and return
        "LeonHeidelbach/trailblazer.nvim",
        cond = not vim.g.vscode,
        lazy = true,
        keys = { "<A-s>", "<A-d>" },
        config = function()
            -- local HOME = os.getenv("HOME")
            require("trailblazer").setup {
                auto_save_trailblazer_state_on_exit = false,
                auto_load_trailblazer_state_on_enter = false,
                -- custom_session_storage_dir = HOME .. "/.local/share/trail_blazer_sessions/",
                trail_options = {
                    mark_symbol = "•", --  will only be used if trail_mark_symbol_line_indicators_enabled = true
                    newest_mark_symbol = "󰝥", -- disable this mark symbol by setting its value to ""
                    cursor_mark_symbol = "󰺕", -- disable this mark symbol by setting its value to ""
                    next_mark_symbol = "󰬦", -- disable this mark symbol by setting its value to ""
                    previous_mark_symbol = "󰬬", -- disable this mark symbol by setting its value to ""
                },
                mappings = {
                    nv = {
                        motions = {
                            new_trail_mark = "<A-s>",
                            track_back = "<A-d>",
                            peek_move_next_down = "<A-.>",
                            peek_move_previous_up = "<A-,>",
                            move_to_nearest = "<A-n>",
                            toggle_trail_mark_list = "<A-l>",
                        },
                        actions = {
                            delete_all_trail_marks = "<A-D>",
                            paste_at_last_trail_mark = "<A-p>",
                            paste_at_all_trail_marks = "<A-P>",
                        },
                    },
                },
                quickfix_mappings = { -- rename this to "force_quickfix_mappings" to completely override default mappings and not merge with them
                    -- nv = {
                    --  motions = {
                    --   qf_motion_move_trail_mark_stack_cursor = "<CR>",
                    --  },
                    --  actions = {
                    --   qf_action_delete_trail_mark_selection = "d",
                    --   qf_action_save_visual_selection_start_line = "v",
                    --  },
                    --  alt_actions = {
                    --   qf_action_save_visual_selection_start_line = "V",
                    --  },
                    -- },
                    -- v = {
                    --  actions = {
                    --   qf_action_move_selected_trail_marks_down = "<C-j>",
                    --   qf_action_move_selected_trail_marks_up = "<C-k>",
                    --  },
                    -- },
                },
                hl_groups = {
                    TrailBlazerTrailMark = {
                        -- You can add any valid highlight group attribute to this table
                        guifg = "White",
                        guibg = "none",
                        gui = "bold",
                    },
                    TrailBlazerTrailMarkNext = {
                        guifg = "Aquamarine",
                        guibg = "none",
                        gui = "bold",
                    },
                    TrailBlazerTrailMarkPrevious = {
                        guifg = "LightPink",
                        guibg = "none",
                        gui = "bold",
                    },
                    TrailBlazerTrailMarkCursor = {
                        guifg = "Magenta",
                        guibg = "Yellow",
                        gui = "bold",
                    },
                    TrailBlazerTrailMarkNewest = {
                        guifg = "Black",
                        guibg = "PaleTurquoise",
                        gui = "bold",
                    },
                    TrailBlazerTrailMarkCustomOrd = {
                        guifg = "Black",
                        guibg = "LightSlateBlue",
                        gui = "bold",
                    },
                    TrailBlazerTrailMarkGlobalChron = {
                        guifg = "Black",
                        guibg = "LemonChiffon",
                        gui = "bold",
                    },
                    TrailBlazerTrailMarkGlobalBufLineSorted = {
                        guifg = "Black",
                        guibg = "LightPink",
                        gui = "bold",
                    },
                    TrailBlazerTrailMarkGlobalFpathLineSorted = {
                        guifg = "Black",
                        guibg = "LightPink",
                        gui = "bold",
                    },
                    TrailBlazerTrailMarkGlobalChronBufLineSorted = {
                        guifg = "Black",
                        guibg = "Olive",
                        gui = "bold",
                    },
                    TrailBlazerTrailMarkGlobalChronFpathLineSorted = {
                        guifg = "Black",
                        guibg = "Olive",
                        gui = "bold",
                    },
                    TrailBlazerTrailMarkGlobalChronBufSwitchGroupChron = {
                        guifg = "Black",
                        guibg = "VioletRed",
                        gui = "bold",
                    },
                    TrailBlazerTrailMarkGlobalChronBufSwitchGroupLineSorted = {
                        guifg = "Black",
                        guibg = "MediumSpringGreen",
                        gui = "bold",
                    },
                    TrailBlazerTrailMarkBufferLocalChron = {
                        guifg = "Black",
                        guibg = "Green",
                        gui = "bold",
                    },
                    TrailBlazerTrailMarkBufferLocalLineSorted = {
                        guifg = "Black",
                        guibg = "Aquamarine",
                        gui = "bold",
                    },
                },
            }
        end,
    },
    {
        'wakatime/vim-wakatime',
        -- cond = not vim.g.vscode,
        lazy = false
    },
}
