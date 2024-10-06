-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local delmap = vim.keymap.del

delmap("n", "<C-b>")
delmap("n", "<C-e>")
delmap("n", "<C-h>")
delmap("n", "<C-j>")
delmap("n", "<C-k>")
delmap("n", "<C-l>")
delmap({ "i", "v" }, "<A-j>")
delmap({ "i", "v" }, "<A-k>")
delmap("n", "<S-h>")
delmap("n", "<S-l>")
delmap("n", "[b")
delmap("n", "]b")
delmap("n", "<leader>bb")
delmap("n", "<leader>`")
delmap("n", "<leader>bd")
delmap("n", "<leader>bD")
delmap("n", "<leader>be")
delmap("n", "<leader>bl")
delmap("n", "<leader>bo")
delmap("n", "<leader>bp")
delmap("n", "<leader>bP")
delmap("n", "<leader>br")
delmap("n", "<leader>ur")
delmap("n", "gco")
delmap("n", "gcO")
delmap("n", "<leader>xl")
delmap("n", "<leader>xq")
delmap("n", "[q")
delmap("n", "]q")
delmap("n", "<leader>cf")
delmap("n", "<leader>cd")
delmap("n", "[d")
delmap("n", "]d")
delmap("n", "[e")
delmap("n", "]e")
delmap("n", "[w")
delmap("n", "]w")
delmap("n", "<leader>gg")
delmap("n", "<leader>gG")
delmap("n", "<leader>gb")
delmap("n", "<leader>gB")
delmap("n", "<leader>gf")
delmap("n", "<leader>gl")
delmap("n", "<leader>gL")
delmap("n", "<leader>gc")
delmap("n", "<leader>gs")
delmap("n", "<leader>ge")
delmap("n", "<leader>qq")
delmap("n", "<leader>ql")
delmap("n", "<leader>qd")
delmap("n", "<leader>qs")
delmap("n", "<leader>qS")
delmap("n", "<leader>l")
delmap("n", "<leader>L")
delmap("n", "<leader>ft")
delmap("n", "<leader>fT")
delmap("n", "<c-/>")
delmap("n", "<c-_>")
delmap("t", "<C-h>")
delmap("t", "<C-j>")
delmap("t", "<C-k>")
delmap("t", "<C-l>")
delmap("t", "<C-/>")
delmap("t", "<c-_>")
delmap("n", "<leader>w")
delmap("n", "<leader>-")
delmap("n", "<leader>|")
delmap("n", "<leader>wd")
delmap("n", "<leader><tab>l")
delmap("n", "<leader><tab>o")
delmap("n", "<leader><tab>f")
delmap("n", "<leader><tab><tab>")
delmap("n", "<leader><tab>]")
delmap("n", "<leader><tab>d")
delmap("n", "<leader><tab>[")
delmap("n", "<leader>e")
delmap("n", "<leader>E")
delmap("n", "<leader>K")

-- general
map("n", ";", ":", { desc = "CMD enter command mode", nowait = true })
map("n", "q", "b", { desc = "previous word" })

map("n", "<leader>w", "<cmd> w <cr>", { desc = "write" })
map("n", "<leader>q", "<cmd> q <cr>", { desc = "quit" })

map("n", "<M-j>", "<cmd> move +1 <cr>", { desc = "move the line down" })
map("n", "<M-k>", "<cmd> move -2 <cr>", { desc = "move the line up" })
map("n", "<M-Tab>", "<cmd> tabnext <cr>", { desc = "next [Tab]" })
map("n", "<M-n>", "<cmd> tabnew <cr>", { desc = "[n]ew tab" })

map({ "n", "v" }, "<C-h>", "5h", { desc = "fast left" })
map({ "n", "v" }, "<C-j>", "5j", { desc = "fast down" })
map({ "n", "v" }, "<C-k>", "5k", { desc = "fast up" })
map({ "n", "v" }, "<C-l>", "5l", { desc = "fast right" })

-- map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
-- map("i", "<C-e>", "<End>", { desc = "move end of line" })
-- map("i", "<C-h>", "<Left>", { desc = "move left", remap = true, expr = true, silent = true })
-- map("i", "<C-l>", "<Right>", { desc = "move right", remap = true, expr = true, silent = true })
-- map("i", "<C-j>", "<Down>", { desc = "move down", remap = true, expr = true, silent = true })
-- map("i", "<C-k>", "<Up>", { desc = "move up", remap = true, expr = true, silent = true })
-- map("i", "<C-h>", "<esc> i", { desc = "move left" })
-- map("i", "<C-l>", "<esc> 2l i", { desc = "move right" })
-- map("i", "<C-j>", "<esc> jl i", { desc = "move down" })
-- map("i", "<C-k>", "<esc> kl i", { desc = "move up" })

map("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<leader>x", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

map("n", "<c-/>", "gcc", { desc = "Toggle Comment", remap = true })
map("v", "<c-/>", "gc", { desc = "Toggle comment", remap = true })

map({ "n", "v" }, "<leader>fm", function()
  LazyVim.format({ force = true })
end, { desc = "Format" })

-- diagnostic
local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end
map("n", "<A-]>", diagnostic_goto(true), { desc = "Next Diagnostic" })
map("n", "<A-[>", diagnostic_goto(false), { desc = "Prev Diagnostic" })

-- floating terminal
local lazyterm = function()
  LazyVim.terminal(nil, { cwd = LazyVim.root() })
end
map("n", "<A-f>", function()
  LazyVim.terminal()
end, { desc = "Terminal (cwd)" })
map("t", "<A-f>", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- plugin: persistence
map("n", "<leader>a", "<cmd> lua require('persistence').load() <cr>", { desc = "Restore last session for current dir" }) -- <leader>a -> previous session
map(
  "n",
  "<leader>sc",
  "<cmd> lua require('persistence').load() <cr>",
  { desc = "Restore last session for [c]urrent dir" }
)
map(
  "n",
  "<leader>sl",
  "<cmd> lua require('persistence').load({ last = true }) <cr>",
  { desc = "Restore [l]ast session" }
)
map("n", "<leader>sQ", "<cmd> lua require('persistence').stop() <cr>", { desc = "[Q]uit without saving session" })

-- plugin: search_replace
map(
  "n",
  "<leader>rs",
  "<CMD>SearchReplaceSingleBufferSelections<CR>",
  { desc = "SearchReplaceSingleBuffer [s]elction list" }
)
map("n", "<leader>ro", "<CMD>SearchReplaceSingleBufferOpen<CR>", { desc = "[o]pen" })
map("n", "<leader>rw", "<CMD>SearchReplaceSingleBufferCWord<CR>", { desc = "[w]ord" })
map("n", "<leader>rW", "<CMD>SearchReplaceSingleBufferCWORD<CR>", { desc = "[W]ORD" })
map("n", "<leader>re", "<CMD>SearchReplaceSingleBufferCExpr<CR>", { desc = "[e]xpr" })
map("n", "<leader>rf", "<CMD>SearchReplaceSingleBufferCFile<CR>", { desc = "[f]ile" })

map(
  "n",
  "<leader>rbs",
  "<CMD>SearchReplaceMultiBufferSelections<CR>",
  { desc = "SearchReplaceMultiBuffer [s]elction list" }
)
map("n", "<leader>rbo", "<CMD>SearchReplaceMultiBufferOpen<CR>", { desc = "[o]pen" })
map("n", "<leader>rbw", "<CMD>SearchReplaceMultiBufferCWord<CR>", { desc = "[w]ord" })
map("n", "<leader>rbW", "<CMD>SearchReplaceMultiBufferCWORD<CR>", { desc = "[W]ORD" })
map("n", "<leader>rbe", "<CMD>SearchReplaceMultiBufferCExpr<CR>", { desc = "[e]xpr" })
map("n", "<leader>rbf", "<CMD>SearchReplaceMultiBufferCFile<CR>", { desc = "[f]ile" })

-- plugin: togglrterm = {
map(
  { "n", "t" },
  "<A-b>",
  '<Cmd>execute v:count . "ToggleTerm direction=horizontal"<CR>',
  { desc = "toggle term [b]ottom", silent = true, noremap = true }
)
map(
  { "n", "t" },
  "<A-r>",
  '<Cmd>execute v:count . "ToggleTerm direction=vertical"<CR>',
  { desc = "toggle term [r]ight", silent = true, noremap = true }
)
map(
  { "n", "t" },
  "<A-f>",
  '<Cmd>execute v:count . "ToggleTerm direction=float"<CR>',
  { desc = "toggle term [f]loat", silent = true, noremap = true }
)
map(
  { "n", "t" },
  "<A-t>",
  '<Cmd>execute v:count . "ToggleTerm direction=tab"<CR>',
  { desc = "toggle term [t]ab", silent = true, noremap = true }
)
