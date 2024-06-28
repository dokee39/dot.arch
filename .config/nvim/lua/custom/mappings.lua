---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["q"] = { "b", "previous word" },
    ["<leader>w"] = { "<cmd> w <CR>", "write" },
    ["<leader>q"] = { "<cmd> q <CR>", "quit" },
    ["<M-j>"] = { "<cmd> move +1 <CR>", "move the line down" },
    ["<M-k>"] = { "<cmd> move -2 <CR>", "move the line up" },
    ["<M-Tab>"] = { "<cmd> tabnext <CR>", "next [Tab]" },
    ["<M-n>"] = { "<cmd> tabnew <CR>", "[n]ew tab" },
    ["<C-h>"] = { "5h", "fast left" },
    ["<C-j>"] = { "5j", "fast down" },
    ["<C-k>"] = { "5k", "fast up" },
    ["<C-l>"] = { "5l", "fast right" },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
    ["<leader>lr"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "LSP rename",
    },

    ["gD"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      "LSP declaration",
    },

    ["gd"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "LSP definition",
    },

    ["K"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },

    ["gi"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "LSP implementation",
    },

    ["<leader>ls"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "LSP signature help",
    },

    ["<leader>D"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "LSP definition type",
    },

    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },

    ["gr"] = {
      function()
        vim.lsp.buf.references()
      end,
      "LSP references",
    },

    ["<leader>lf"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Floating diagnostic",
    },

    ["[d"] = {
      function()
        vim.diagnostic.goto_prev { float = { border = "rounded" } }
      end,
      "Goto prev",
    },

    ["]d"] = {
      function()
        vim.diagnostic.goto_next { float = { border = "rounded" } }
      end,
      "Goto next",
    },

    ["<leader>wa"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "Add workspace folder",
    },

    ["<leader>wr"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "Remove workspace folder",
    },

    ["<leader>wl"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "List workspace folders",
    },

  },
  v = {
    [">"] = { ">gv", "indent" },
    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
    -- ["<C-r>"] = { "<CMD>SearchReplaceSingleBufferVisualSelection<CR>" },
    -- ["<C-s>"] = { "<CMD>SearchReplaceWithinVisualSelection<CR>" },
    -- ["<C-b>"] = { "<CMD>SearchReplaceWithinVisualSelectionCWord<CR>" },
  },
}

-- more keybinds!

M.disabled = {
  n = {
    ["<leader>n"] = "",
    ["<leader>ra"] = "",
    ["<leader>rn"] = "",
  },
}

M.persistence = {
  n = {
    ["<leader>a"] = { "<cmd> lua require('persistence').load() <cr>", "Restore last session for current dir" }, -- <leader>a -> previous session

    -- ["<leader>s"] = { name = "+[s]ession" },
    ["<leader>sc"] = { "<cmd> lua require('persistence').load() <cr>", "Restore last session for [c]urrent dir" },
    ["<leader>sl"] = { "<cmd> lua require('persistence').load({ last = true }) <cr>", "Restore [l]ast session" },
    ["<leader>sQ"] = { "<cmd> lua require('persistence').stop() <cr>", "[Q]uit without saving session" },
  },
}

M.noice = {
  n = {
    -- ["<leader>n"] = { name = "+[n]otify" },
    ["<leader>nn"] = { "<cmd> Notifications <cr>", "Show [n]otifications" }, -- <leader>onn -> show notification history
    ["<leader>nt"] = { "<cmd> Noice telescope <cr>", "Show Notifications in [t]elescope" },
    ["<leader>nm"] = { "<cmd> messages <cr>", "Show [m]essages" },
    ["<leader>nd"] = { "<cmd> NoiceDisable <cr>", "Noice [d]isable" },
    ["<leader>ne"] = { "<cmd> NoiceEnable <cr>", "Noice [e]nable" },
  },
}

M.search_replace = {
  n = {
    -- ["<leader>r"] = { name = "+[r]eplace" }
    ["<leader>rs"] = { "<CMD>SearchReplaceSingleBufferSelections<CR>", "SearchReplaceSingleBuffer [s]elction list" },
    ["<leader>ro"] = { "<CMD>SearchReplaceSingleBufferOpen<CR>", "[o]pen" },
    ["<leader>rw"] = { "<CMD>SearchReplaceSingleBufferCWord<CR>", "[w]ord" },
    ["<leader>rW"] = { "<CMD>SearchReplaceSingleBufferCWORD<CR>", "[W]ORD" },
    ["<leader>re"] = { "<CMD>SearchReplaceSingleBufferCExpr<CR>", "[e]xpr" },
    ["<leader>rf"] = { "<CMD>SearchReplaceSingleBufferCFile<CR>", "[f]ile" },
    -- ["<leader>rb"] = { name = "+replace in mutli [b]uffer" },
    ["<leader>rbs"] = { "<CMD>SearchReplaceMultiBufferSelections<CR>", "SearchReplaceMultiBuffer [s]elction list" },
    ["<leader>rbo"] = { "<CMD>SearchReplaceMultiBufferOpen<CR>", "[o]pen" },
    ["<leader>rbw"] = { "<CMD>SearchReplaceMultiBufferCWord<CR>", "[w]ord" },
    ["<leader>rbW"] = { "<CMD>SearchReplaceMultiBufferCWORD<CR>", "[W]ORD" },
    ["<leader>rbe"] = { "<CMD>SearchReplaceMultiBufferCExpr<CR>", "[e]xpr" },
    ["<leader>rbf"] = { "<CMD>SearchReplaceMultiBufferCFile<CR>", "[f]ile" },
  },
}

M.togglrterm = {
  n = {
    ["<A-b>"] = {
      '<Cmd>execute v:count . "ToggleTerm direction=horizontal"<CR>',
      "toggle term [b]ottom",
      opts = { silent = true, noremap = true },
    },
    ["<A-r>"] = {
      '<Cmd>execute v:count . "ToggleTerm direction=vertical"<CR>',
      "toggle term [r]ight",
      opts = { silent = true, noremap = true },
    },
    ["<A-f>"] = {
      '<Cmd>execute v:count . "ToggleTerm direction=float"<CR>',
      "toggle term [f]loat",
      opts = { silent = true, noremap = true },
    },
    ["<A-t>"] = {
      '<Cmd>execute v:count . "ToggleTerm direction=tab"<CR>',
      "toggle term [t]ab",
      opts = { silent = true, noremap = true },
    },
  },
  t = {
    ["<A-b>"] = {
      '<Cmd>execute v:count . "ToggleTerm direction=horizontal"<CR>',
      "toggle term [b]ottom",
      opts = { silent = true, noremap = true },
    },
    ["<A-r>"] = {
      '<Cmd>execute v:count . "ToggleTerm direction=vertical"<CR>',
      "toggle term [r]ight",
      opts = { silent = true, noremap = true },
    },
    ["<A-f>"] = {
      '<Cmd>execute v:count . "ToggleTerm direction=float"<CR>',
      "toggle term [f]loat",
      opts = { silent = true, noremap = true },
    },
    ["<A-t>"] = {
      '<Cmd>execute v:count . "ToggleTerm direction=tab"<CR>',
      "toggle term [t]ab",
      opts = { silent = true, noremap = true },
    },
  },
}

return M
