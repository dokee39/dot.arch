return {
  -- beautify
  { -- UI beautify
    "folke/noice.nvim",
    enabled = true,
    lazy = true,
    event = { "BufRead", "BufNewFile" },
    dependencies = { "rcarriga/nvim-notify", "MunifTanjim/nui.nvim" },
    config = function()
      require("noice").setup({
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
      })
    end,
  },
  { -- rainbow for various backets
    -- "HiPhish/nvim-ts-rainbow2",
    "HiPhish/rainbow-delimiters.nvim",
    -- Bracket pair rainbow colorize
    lazy = true,
    event = { "User FileOpened" },
  },
  { -- purple edge for focused window
    "nvim-zh/colorful-winsep.nvim",
    lazy = true,
    event = "WinLeave",
    config = function()
      require("colorful-winsep").setup()
    end,
  },
  {
    "stevearc/dressing.nvim",
    lazy = true,
    enabled = function()
      return LazyVim.pick.want() == "telescope"
    end,
    init = function()
      ---@diagnostic disable-next-line: duplicate-set-field
      vim.ui.select = function(...)
        require("lazy").load({ plugins = { "dressing.nvim" } })
        return vim.ui.select(...)
      end
      ---@diagnostic disable-next-line: duplicate-set-field
      vim.ui.input = function(...)
        require("lazy").load({ plugins = { "dressing.nvim" } })
        return vim.ui.input(...)
      end
    end,
  },
}
