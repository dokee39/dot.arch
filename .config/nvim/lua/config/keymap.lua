local map = vim.keymap.set

-- general
map({ "n", "v" }, "q", "b", { desc = "previous word" })

map("n", "<leader>w", "<cmd> w <cr>", { desc = "write" })
map("n", "<leader>q", "<cmd> q <cr>", { desc = "quit" })

-- map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

map("n", "<M-j>", "<cmd> move +1 <cr>", { desc = "move the line down" })
map("n", "<M-k>", "<cmd> move -2 <cr>", { desc = "move the line up" })
map("v", "<M-j>", ":m '>+1<CR>gv=gv", { desc = "move the lines down", silent = true })
map("v", "<M-k>", ":m '<-2<CR>gv=gv", { desc = "move the lines up", silent = true })

map("n", "<Tab>", "<cmd>bnext<CR>")
map("n", "<S-Tab>", "<cmd>bNext<CR>")
map("n", "<leader>x", "<cmd>bd<CR>")
map("n", "<M-Tab>", "<cmd> tabnext <cr>", { desc = "next [Tab]" })
map("n", "<M-n>", "<cmd> tabnew <cr>", { desc = "[n]ew tab" })

map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- mini.comment
map("n", "<leader>/", "gcc", { remap = true })
map("v", "<leader>/", "gc", { remap = true })

