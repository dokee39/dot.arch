return {
  -- faster type
  { -- cursor quickly jump
    "ggandor/leap.nvim",
    lazy = true,
    keys = { "E", "R", "W", "dE", "dR", "yE", "yR", "cE", "cR" },
    config = function()
      require("leap").opts.highlight_unlabeled_phase_one_targets = true
      -- leap.add_default_mappings()
      vim.keymap.set({ "x", "o", "n" }, "E", "<Plug>(leap-backward-to)") -- E -> word backword
      vim.keymap.set({ "x", "o", "n" }, "R", "<Plug>(leap-forward-to)") -- R -> word forword
      vim.keymap.set({ "x", "o", "n" }, "W", "<Plug>(leap-from-window)") -- W -> word in other window
    end,
  },
  { -- better escape
    "max397574/better-escape.nvim",
    lazy = true,
    event = { "InsertEnter" },
    config = function()
      require("better_escape").setup {
        timeout = vim.o.timeoutlen,
        default_mappings = false,
        mappings = {
            i =  {
                j = { j = "<Esc>", k = "<Esc>"},
                k = { j = "<Esc>", k = "<Esc>"},
            },
        },
      }
    end,
  },
  { -- better search and replace
    "roobert/search-replace.nvim",
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
    config = function()
      require("search-replace").setup {
        default_replace_single_buffer_options = "gcI",
        default_replace_multi_buffer_options = "egcI",
      }
    end,
  },
  { -- enhanced v,c,d,y
    "chrisgrieser/nvim-various-textobjs",
    lazy = true,
    event = { "User FileOpened" },
    config = function()
      require("various-textobjs").setup {
        useDefaultKeymaps = true,
        lookForwardLines = 10,
      }
      -- example: `an` for outer subword, `in` for inner subword
      vim.keymap.set({ "o", "x" }, "aS", function()
        require("various-textobjs").subword(false)
      end)
      vim.keymap.set({ "o", "x" }, "iS", function()
        require("various-textobjs").subword(true)
      end)
    end,
  },
  { -- curse leave and return
    "LeonHeidelbach/trailblazer.nvim",
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
              set_trail_mark_select_mode = "<A-t>",
              switch_to_next_trail_mark_stack = "<A-[>",
              switch_to_previous_trail_mark_stack = "<A-]>",
              set_trail_mark_stack_sort_mode = "<A-S>",
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
    "nvim-treesitter/nvim-treesitter-textobjects",
    lazy = true,
    event = { "User FileOpened" },
    -- after = "nvim-treesitter",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("nvim-treesitter.configs").setup {
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ["af"] = "@function.outer",
              ["if"] = "@function.inner",
              ["ac"] = "@class.outer",
              ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
              ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
              ["id"] = "@conditional.inner",
              ["ad"] = "@conditional.outer",
            },
            selection_modes = {
              ["@parameter.outer"] = "v", -- charwise
              ["@function.outer"] = "V", -- linewise
              ["@class.outer"] = "<c-v>", -- blockwise
            },
            include_surrounding_whitespace = false,
          },
          move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
              ["]m"] = "@function.outer",
              ["]]"] = { query = "@class.outer", desc = "Next class start" },
              --
              -- You can use regex matching and/or pass a list in a "query" key to group multiple queires.
              ["]o"] = "@loop.*",
              -- ["]o"] = { query = { "@loop.inner", "@loop.outer" } }
              --
              -- You can pass a query group to use query from `queries/<lang>/<query_group>.scm file in your runtime path.
              -- Below example nvim-treesitter's `locals.scm` and `folds.scm`. They also provide highlights.scm and indent.scm.
              ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
              ["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
            },
            goto_next_end = {
              ["]M"] = "@function.outer",
              ["]["] = "@class.outer",
            },
            goto_previous_start = {
              ["[m"] = "@function.outer",
              ["[["] = "@class.outer",
            },
            goto_previous_end = {
              ["[M"] = "@function.outer",
              ["[]"] = "@class.outer",
            },
            -- Below will go to either the start or the end, whichever is closer.
            -- Use if you want more granular movements
            -- Make it even more gradual by adding multiple queries and regex.
            goto_next = {
              ["]d"] = "@conditional.outer",
            },
            goto_previous = {
              ["[d"] = "@conditional.outer",
            },
          },
          swap = {
            enable = false,
            swap_next = {
              ["<leader>a"] = "@parameter.inner",
            },
            swap_previous = {
              ["<leader>A"] = "@parameter.inner",
            },
          },
        },
      }
      local ts_repeat_move = require "nvim-treesitter.textobjects.repeatable_move"

      -- Repeat movement with ; and ,
      -- ensure ; goes forward and , goes backward regardless of the last direction
      vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move_next)
      vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_previous)

      -- vim way: ; goes to the direction you were moving.
      -- vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move)
      -- vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_opposite)

      -- Optionally, make builtin f, F, t, T also repeatable with ; and ,
      -- vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f)
      -- vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F)
      -- vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t)
      -- vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T)
    end,
  },
}
