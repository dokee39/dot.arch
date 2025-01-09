vim.keymap.set("n", "<Tab>", "<cmd>bNext<CR>") 
vim.keymap.set("n", "<leader>x", "<cmd>bd<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
