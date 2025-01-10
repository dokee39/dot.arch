local map = vim.keymap.set

-- general
map({"n", "v"}, "q", "b", { desc = "previous word" })

map("n", "<leader>w", "<cmd> w <cr>", { desc = "write" })
map("n", "<leader>q", "<cmd> q <cr>", { desc = "quit" })

map("n", "<M-j>", "<cmd> move +1 <cr>", { desc = "move the line down" })
map("n", "<M-k>", "<cmd> move -2 <cr>", { desc = "move the line up" })
map("v", "<M-j>", ":m '>+1<CR>gv=gv", { desc = "move the lines down", silent = true })
map("v", "<M-k>", ":m '<-2<CR>gv=gv", { desc = "move the lines up", silent = true })

map("n", "<Tab>", "<cmd>bnext<CR>")
map("n", "<S-Tab>", "<cmd>bNext<CR>")
map("n", "<leader>x", "<cmd>bd<CR>")
map("n", "<M-Tab>", "<cmd> tabnext <cr>", { desc = "next [Tab]" })
map("n", "<M-n>", "<cmd> tabnew <cr>", { desc = "[n]ew tab" })

map({"n", "v"}, "<C-h>", "5h", { desc = "fast left" })
map({"n", "v"}, "<C-j>", "5j", { desc = "fast down" })
map({"n", "v"}, "<C-k>", "5k", { desc = "fast up" })
map({"n", "v"}, "<C-l>", "5l", { desc = "fast right" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("n", "<C-S-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-S-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-S-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-S-k>", "<C-w>k", { desc = "switch window up" })

-- telescope.nvim
local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
map('n', '<leader>fo', builtin.oldfiles, { desc = 'Telescope old files' })
map('n', '<leader><space>', builtin.current_buffer_fuzzy_find, { desc = 'Telescope current_buffer_fuzzy_find' })
--[[
    function()
        builtin.current_buffer_fuzzy_find(
            require('telescope.themes').get_dropdown {
                -- winblend = 10,
                -- previewer = false,
            })
    end,
    { desc = '[/] Fuzzily search in current buffer' }
)--]]
