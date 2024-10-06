return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
  -- stylua: ignore
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
  },
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local cmp = require("cmp")

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            -- You could replace select_next_item() with confirm({ select = true }) to get VS Code autocompletion behavior
            cmp.select_next_item()
          elseif vim.snippet.active({ direction = 1 }) then
            vim.schedule(function()
              vim.snippet.jump(1)
            end)
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif vim.snippet.active({ direction = -1 }) then
            vim.schedule(function()
              vim.snippet.jump(-1)
            end)
          else
            fallback()
          end
        end, { "i", "s" }),
      })
    end,
  },
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "gsa",
        delete = "gsd",
        find = "gsf",
        find_left = "gsF",
        highlight = "gsh",
        replace = "gsr",
        update_n_lines = "gsn",
      },
    },
    { -- better escape
      "max397574/better-escape.nvim",
      lazy = true,
      event = { "InsertEnter" },
      config = function()
        require("better_escape").setup({
          timeout = vim.o.timeoutlen,
          default_mappings = false,
          mappings = {
            i = {
              j = { j = "<Esc>", k = "<Esc>" },
              k = { j = "<Esc>", k = "<Esc>" },
            },
          },
        })
      end,
    },
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
      require("search-replace").setup({
        default_replace_single_buffer_options = "gcI",
        default_replace_multi_buffer_options = "egcI",
      })
    end,
  },
  { -- curse leave and return
    "LeonHeidelbach/trailblazer.nvim",
    lazy = true,
    keys = { "<A-s>", "<A-d>" },
    config = function()
      -- local HOME = os.getenv("HOME")
      require("trailblazer").setup({
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
      })
    end,
  },
  { -- show info like definitions, references and so on
    "rmagatti/goto-preview",
    lazy = true,
    keys = { "gp" },
    config = function()
      require("goto-preview").setup({
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
      })
    end,
  },
}
