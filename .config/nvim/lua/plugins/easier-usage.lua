return {
  {
    "akinsho/toggleterm.nvim",
    lazy = true,
    version = "*",
    event = "BufRead",
    config = function()
      require("toggleterm").setup({
        -- size can be a number or function which is passed the current terminal
        size = function(term)
          if term.direction == "horizontal" then
            return 10
          elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
          end
        end,
      })
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
      require("neoscroll").setup({
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
      })

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
      local picker = require("window-picker")
      picker.setup({
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
      })

      vim.keymap.set("n", "fj", function() -- fj -> pick window
        local picked_window_id = picker.pick_window() or vim.api.nvim_get_current_win()
        vim.api.nvim_set_current_win(picked_window_id)
      end, { desc = "Pick a window" })

      -- Swap two windows using the awesome window picker
      local function swap_windows()
        local window = picker.pick_window({
          include_current_win = false,
        })
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
      require("nvim-lastplace").setup({
        lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
        lastplace_ignore_filetype = {
          "gitcommit",
          "gitrebase",
          "svn",
          "hgcommit",
        },
        lastplace_open_folds = true,
      })
    end,
  },
  { -- restore last workspace
    "folke/persistence.nvim",
    -- Restore last session of current dir
    lazy = true,
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    config = function()
      require("persistence").setup({
        dir = vim.fn.expand(vim.fn.stdpath("config") .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
        pre_save = nil,
      })
    end,
  },
}
