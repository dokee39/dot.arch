local map = vim.keymap.set

-- general
map({ "n", "v" }, "q", "b", { desc = "previous word" })

map("n", "<leader>w", "<cmd> w <cr>", { desc = "write" })
if not vim.g.vscode then
    map("n", "<leader>q", "<cmd> q <cr>", { desc = "quit" })
else
    map("n", "<leader>q", "<Cmd>lua require('vscode').call('workbench.action.closeWindow')<CR>")
end

-- clear search highlights
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

-- move line(s)
map("n", "<M-j>", "<cmd> move +1 <cr>", { desc = "move the line down" })
map("n", "<M-k>", "<cmd> move -2 <cr>", { desc = "move the line up" })
map("v", "<M-j>", ":m '>+1<CR>gv=gv", { desc = "move the lines down", silent = true })
map("v", "<M-k>", ":m '<-2<CR>gv=gv", { desc = "move the lines up", silent = true })

-- buffer
if not vim.g.vscode then
    map("n", "<Tab>", "<cmd>bnext<CR>")
    map("n", "<S-Tab>", "<cmd>bNext<CR>")
    map("n", "<leader>x", "<cmd>bd<CR>")
    map("n", "<M-n>", "<cmd> tabnew <cr>", { desc = "[n]ew tab" })
else
    map("n", "<Tab>", "<Cmd>lua require('vscode').call('workbench.action.nextEditor')<CR>")
    map("n", "<S-Tab>", "<Cmd>lua require('vscode').call('workbench.action.previousEditor')<CR>")
    map("n", "<leader>x", "<Cmd>lua require('vscode').call('workbench.action.closeEditorInAllGroups')<CR>")
end

-- CTRL - <h j k l>
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
if not vim.g.vscode then
    map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
    map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
    map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
    map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })
end

-- comment
map("n", "<leader>/", "gcc", { remap = true })
map("v", "<leader>/", "gc", { remap = true })

-- vscode
if vim.g.vscode then
    map("n", "<leader>ff", "<Cmd>lua require('vscode').call('find-it-faster.findFiles')<CR>")
    map("n", "<leader>fg", "<Cmd>lua require('vscode').call('find-it-faster.findWithinFiles')<CR>")
    map("n", "<leader>tf", "<Cmd>lua require('vscode').call('find-it-faster.findFilesWithType')<CR>")
    map("n", "<leader>tg", "<Cmd>lua require('vscode').call('find-it-faster.findWithinFilesWithType')<CR>")
    map("n", "<leader>r", "<Cmd>lua require('vscode').call('editor.action.startFindReplaceAction')<CR>")
end

-- autocmd
vim.cmd [[ autocmd BufRead,BufNewFile *.mpp set filetype=mpp ]]
