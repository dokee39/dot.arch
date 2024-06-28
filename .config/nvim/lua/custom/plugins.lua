local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
    -- config = function()
    --   require("nvim-treesitter.configs").setup {
    --     incremental_selection = {
    --       enable = true,
    --       keymaps = {
    --         init_selection = "<CR>",
    --         node_incremental = "<CR>",
    --         node_decremental = "<BS>",
    --         -- scope_incremental = '<TAB>',
    --       },
    --     },
    --   }
    -- end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "stevearc/conform.nvim",

    --  for users those who want auto-save conform + lazyloading!
    -- event = "BufWritePre"
    config = function()
      require "custom.configs.conform"
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },
  {
    "NvChad/nvterm",
    enabled = false,
  },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }

  {
    "folke/which-key.nvim",
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "whichkey")
      require("which-key").setup(opts)
      local present, wk = pcall(require, "which-key")
      if not present then
        return
      end
      wk.register {
        -- add group
        ["<leader>"] = {
          f = { name = "+[f]ind" },
          s = { name = "+[s]ession" },
          r = { name = "+[r]eplace" },
          rb = { name = "+replace in mutli [b]uffer" },
          n = { name = "+[n]otify" },
          m = { name = "+[m]arks" },
          t = { name = "+[t]erms" },
        },
      }
    end,
    setup = function()
      require("core.utils").load_mappings "whichkey"
    end,
  },

  -- beautify
  { -- UI beautify
    "folke/noice.nvim",
    enabled = true,
    lazy = true,
    event = { "BufRead", "BufNewFile" },
    dependencies = { "rcarriga/nvim-notify", "MunifTanjim/nui.nvim" },
    config = function()
      require("noice").setup {
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
      }
    end,
  },
  { -- notify -> pop up
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
  { -- rainbow for various backets
    "HiPhish/nvim-ts-rainbow2",
    -- Bracket pair rainbow colorize
    lazy = true,
    event = { "User FileOpened" },
  },
  { -- purple edge for focused window
    "nvim-zh/colorful-winsep.nvim",
    lazy = true,
    event = "WinNew",
    config = function()
      require("colorful-winsep").setup()
    end,
  },
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
        mapping = { "jk", "kj" },
        timeout = 300,
        clear_empty_lines = false,
        keys = "<Esc>",
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
  -- friendlier programme
  { -- show info like definitions, references and so on
    "rmagatti/goto-preview",
    lazy = true,
    keys = { "gp" },
    config = function()
      require("goto-preview").setup {
        width = 120,
        height = 25,
        default_mappings = true,
        debug = false,
        opacity = nil,
        post_open_hook = nil,
        -- You can use "default_mappings = true" setup option
        -- Or explicitly set keybindings
        -- vim.cmd("nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>")
        -- vim.cmd("nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>")
        -- vim.cmd("nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>")
        -- gpd -> goto preview for symbol definition
        -- gpi -> goto preview for implementation
        -- gpd -> goto preview for references
        -- gpd -> goto preview for type definition
      }
    end,
  },
  -- easier usage
  {
    "akinsho/toggleterm.nvim",
    lazy = true,
    version = "*",
    event = "BufRead",
    config = function()
      require("toggleterm").setup {
        -- size can be a number or function which is passed the current terminal
        size = function(term)
          if term.direction == "horizontal" then
            return 10
          elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
          end
        end,
      }
    end,

    --  open_mapping = [[<c-x>]],
    hide_numbers = true, -- hide the number column in toggleterm buffers
    shade_filetypes = {},
    shade_terminals = false,
    shading_factor = "0", -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
    start_in_insert = true,
    insert_mappings = false, -- whether or not the open mapping applies in insert mode
    persist_size = false,
    direction = "horizontal", --'horizontal', -- 'vertical' | 'horizontal' | 'window' | 'float',
    close_on_exit = true, -- close the terminal window when the process exits
    shell = vim.o.shell, -- change the default shell
    -- This field is only relevant if direction is set to 'float'
    float_opts = {
      -- The border key is *almost* the same as 'nvim_open_win'
      -- see :h nvim_open_win for details on borders however
      -- the 'curved' border is a custom border type
      -- not natively supported but implemented in this plugin.
      border = "single", --'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
      width = math.floor(vim.o.columns * 0.7),
      height = 15,
      winblend = 0,
      highlights = {
        border = "Normal",
        background = "Normal",
      },
    },
  },
  { -- better scroll
    "karb94/neoscroll.nvim",
    lazy = true,
    -- event = "WinScrolled",
    keys = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
    config = function()
      require("neoscroll").setup {
        -- All these keys will be mapped to their corresponding default scrolling animation
        -- mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
        hide_cursor = true,
        stop_eof = true,
        use_local_scrolloff = false,
        respect_scrolloff = false,
        cursor_scrolls_alone = true,
        -- quadratic, cubic, quartic, quintic, circular, sine
        easing_function = "cubic",
        pre_hook = nil,
        post_hook = nil,
      }

      local t = {}
      t["<C-u>"] = { "scroll", { "-vim.wo.scroll", "true", "50", [['cubic']] } }
      t["<C-d>"] = { "scroll", { "vim.wo.scroll", "true", "50", [['cubic']] } }
      t["<C-b>"] = { "scroll", { "-vim.api.nvim_win_get_height(0)", "true", "50", [['cubic']] } }
      t["<C-f>"] = { "scroll", { "vim.api.nvim_win_get_height(0)", "true", "50", [['cubic']] } }
      t["<C-y>"] = { "scroll", { "-0.10", "false", "50", [['cubic']] } }
      t["<C-e>"] = { "scroll", { "0.10", "false", "50", [['cubic']] } }
      t["zt"] = { "zt", { "100", [['cubic']] } }
      t["zz"] = { "zz", { "100", [['cubic']] } }
      t["zb"] = { "zb", { "100", [['cubic']] } }

      require("neoscroll.config").set_mappings(t)
    end,
  },
  { -- pick window
    "s1n7ax/nvim-window-picker",
    lazy = true,
    event = "VeryLazy",
    version = "2.*",
    config = function()
      local picker = require "window-picker"
      picker.setup {
        hint = "floating-big-letter",
        selection_chars = "FJGHDKSL",
        filter_rules = {
          autoselect_one = true,
          include_current_win = true,
          bo = {
            filetype = { "neo-tree", "neo-tree-popup", "notify", "quickfix" },
            buftype = { "terminal" },
          },
        },
        -- other_win_hl_color = "#e35e4f",
      }

      vim.keymap.set("n", "fj", function() -- fj -> pick window
        local picked_window_id = picker.pick_window() or vim.api.nvim_get_current_win()
        vim.api.nvim_set_current_win(picked_window_id)
      end, { desc = "Pick a window" })

      -- Swap two windows using the awesome window picker
      local function swap_windows()
        local window = picker.pick_window {
          include_current_win = false,
        }
        local target_buffer = vim.fn.winbufnr(window)
        -- Set the target window to contain current buffer
        vim.api.nvim_win_set_buf(window, 0)
        -- Set current window to contain target buffer
        vim.api.nvim_win_set_buf(0, target_buffer)
      end

      vim.keymap.set("n", "FJ", swap_windows, { desc = "Swap windows" }) -- FJ -> switch window
    end,
  },
  { -- record the last place of curser
    "ethanholz/nvim-lastplace",
    lazy = true,
    event = { "User FileOpened" },
    config = function()
      require("nvim-lastplace").setup {
        lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
        lastplace_ignore_filetype = {
          "gitcommit",
          "gitrebase",
          "svn",
          "hgcommit",
        },
        lastplace_open_folds = true,
      }
    end,
  },
  { -- restore last workspace
    "folke/persistence.nvim",
    -- Restore last session of current dir
    lazy = true,
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    config = function()
      require("persistence").setup {
        dir = vim.fn.expand(vim.fn.stdpath "config" .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
        pre_save = nil,
      }
    end,
  },

  { 'wakatime/vim-wakatime', lazy = false },
  { 'sbdchd/neoformat', lazy = false },
  { 'luochen1990/rainbow', lazy = false },
}

return plugins
