require "nvchad.mappings"

local map = vim.keymap.set

-- general
map("n", ";", ":", { desc = "CMD enter command mode", nowait = true })
map("n", "q", "b", { desc = "previous word" })
map("n", "<leader>w", "<cmd> w <cr>", { desc = "write" })
map("n", "<leader>q", "<cmd> q <cr>", { desc = "quit" })
map("n", "<M-j>", "<cmd> move +1 <cr>", { desc = "move the line down" })
map("n", "<M-k>", "<cmd> move -2 <cr>", { desc = "move the line up" })
map("n", "<M-Tab>", "<cmd> tabnext <cr>", { desc = "next [Tab]" })
map("n", "<M-n>", "<cmd> tabnew <cr>", { desc = "[n]ew tab" })
map("n", "<C-h>", "5h", { desc = "fast left" })
map("n", "<C-j>", "5j", { desc = "fast down" })
map("n", "<C-k>", "5k", { desc = "fast up" })
map("n", "<C-l>", "5l", { desc = "fast right" })

map("n", "<leader>fm", function()
    require("conform").format()
    end, { desc = "formatting" })

map("n", "[d", function()
    vim.diagnostic.goto_prev { float = { border = "rounded" } }
    end, { desc = "Goto prev" })
map("n", "]d", function()
    vim.diagnostic.goto_next { float = { border = "rounded" } }
    end, { desc = "Goto next" })

-- LSP
map("n", "gd", function()
    vim.lsp.buf.definition()
    end, { desc = "LSP definition" })
map("n", "gD", function()
    vim.lsp.buf.declaration()
    end, { desc = "LSP declaration" })
map("n", "gi", function()
    vim.lsp.buf.implementation()
    end, { desc = "LSP implementation" })
map("n", "gi", function()
    vim.lsp.buf.references()
    end, { desc = "LSP references" })

map("n", "<leader>D", function()
    vim.lsp.buf.type_definition()
    end, { desc = "LSP definition type" })
map("n", "<leader>lr", function()
    require("nvchad.renamer").open()
    end, { desc = "LSP rename" })
map("n", "<leader>ls", function()
    vim.lsp.buf.signature_help()
    end, { desc = "LSP signature help" })
map("n", "<leader>lf", function()
    vim.diagnostic.open_float { border = "rounded" }
    end, { desc = "Floating diagnostic" })
map({"n", "i"}, "<leader>ca", function()
    vim.lsp.buf.code_action()
    end, { desc = "LSP code action" })
map("n", "K", function()
    vim.lsp.buf.hover()
    end, { desc = "LSP hover" })

-- workspace
map("n", "<leader>wa", function()
    vim.lsp.buf.add_workspace_folder()
    end, { desc = "Add workspace folder" })
map("n", "<leader>wr", function()
    vim.lsp.buf.remove_workspace_folder()
    end, { desc = "Remove workspace folder" })
map("n", "<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, { desc = "List workspace folder" })


-- disable
map("n", "<leader>n", "")
map("n", "<leader>ra", "")
map("n", "<leader>rn", "")


-- plugin: persistence
map("n", "<leader>a", "<cmd> lua require('persistence').load() <cr>", { desc = "Restore last session for current dir" }) -- <leader>a -> previous session
map("n", "<leader>sc", "<cmd> lua require('persistence').load() <cr>", { desc = "Restore last session for [c]urrent dir" })
map("n", "<leader>sl", "<cmd> lua require('persistence').load({ last = true }) <cr>", { desc = "Restore [l]ast session" })
map("n", "<leader>sQ", "<cmd> lua require('persistence').stop() <cr>", { desc = "[Q]uit without saving session" })


-- plugin: noice
map("n", "<leader>nn", "<cmd> Notifications <cr>", { desc = "Show [n]otifications" }) -- <leader>onn -> show notification history
map("n", "<leader>nt", "<cmd> Noice telescope <cr>", { desc = "Show Notifications in [t]elescope" })
map("n", "<leader>nm", "<cmd> messages <cr>", { desc = "Show [m]essages" })
map("n", "<leader>nd", "<cmd> NoiceDisable <cr>", { desc = "Noice [d]isable" })
map("n", "<leader>ne", "<cmd> NoiceEnable <cr>", { desc = "Noice [e]nable" })


-- plugin: search_replace
map("n", "<leader>rs", "<CMD>SearchReplaceSingleBufferSelections<CR>", { desc = "SearchReplaceSingleBuffer [s]elction list" })
map("n", "<leader>ro", "<CMD>SearchReplaceSingleBufferOpen<CR>", { desc = "[o]pen" })
map("n", "<leader>rw", "<CMD>SearchReplaceSingleBufferCWord<CR>", { desc = "[w]ord" })
map("n", "<leader>rW", "<CMD>SearchReplaceSingleBufferCWORD<CR>", { desc = "[W]ORD" })
map("n", "<leader>re", "<CMD>SearchReplaceSingleBufferCExpr<CR>", { desc = "[e]xpr" })
map("n", "<leader>rf", "<CMD>SearchReplaceSingleBufferCFile<CR>", { desc = "[f]ile" })

map("n", "<leader>rbs", "<CMD>SearchReplaceMultiBufferSelections<CR>", { desc = "SearchReplaceMultiBuffer [s]elction list" })
map("n", "<leader>rbo", "<CMD>SearchReplaceMultiBufferOpen<CR>", { desc = "[o]pen" })
map("n", "<leader>rbw", "<CMD>SearchReplaceMultiBufferCWord<CR>", { desc = "[w]ord" })
map("n", "<leader>rbW", "<CMD>SearchReplaceMultiBufferCWORD<CR>", { desc = "[W]ORD" })
map("n", "<leader>rbe", "<CMD>SearchReplaceMultiBufferCExpr<CR>", { desc = "[e]xpr" })
map("n", "<leader>rbf", "<CMD>SearchReplaceMultiBufferCFile<CR>", { desc = "[f]ile" })


-- plugin: togglrterm = {
map({"n", "t"}, "<A-b>",
    '<Cmd>execute v:count . "ToggleTerm direction=horizontal"<CR>',
    { desc = "toggle term [b]ottom", silent = true, noremap = true })
map({"n", "t"}, "<A-r>",
    '<Cmd>execute v:count . "ToggleTerm direction=vertical"<CR>',
    { desc = "toggle term [r]ight", silent = true, noremap = true })
map({"n", "t"}, "<A-f>",
    '<Cmd>execute v:count . "ToggleTerm direction=float"<CR>',
    { desc = "toggle term [f]loat", silent = true, noremap = true })
map({"n", "t"}, "<A-t>",
    '<Cmd>execute v:count . "ToggleTerm direction=tab"<CR>',
    { desc = "toggle term [t]ab", silent = true, noremap = true })
