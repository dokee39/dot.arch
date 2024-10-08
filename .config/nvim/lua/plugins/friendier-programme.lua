return {
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
      -- "jbyuki/one-small-step-for-vimkind",
      -- "theHamsta/nvim-dap-virtual-text",
      "nvim-neotest/nvim-nio",
      -- "rcarriga/nvim-dap-ui",
      -- "nvim-telescope/telescope-dap.nvim",
    {
      "theHamsta/nvim-dap-virtual-text",
      module = { "nvim-dap-virtual-text" },
    },
    {
      "rcarriga/nvim-dap-ui",
      module = { "dapui" },
    },
    "nvim-telescope/telescope-dap.nvim",
    {
      "jbyuki/one-small-step-for-vimkind",
      module = "osv",
    },
  {
    "mfussenegger/nvim-dap",
    opt = true,
    module = { "dap" },
    requires = {
    {
      "theHamsta/nvim-dap-virtual-text",
      module = { "nvim-dap-virtual-text" },
    },
    {
      "rcarriga/nvim-dap-ui",
      module = { "dapui" },
    },
    "nvim-telescope/telescope-dap.nvim",
    {
      "jbyuki/one-small-step-for-vimkind",
      module = "osv",
    },
    },
    config = function()
    require("configs.dap").setup()
    end,
    disable = false,
  },
 }
