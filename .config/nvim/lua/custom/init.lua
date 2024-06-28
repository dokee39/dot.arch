-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.o.wrap = false
vim.o.inccommand = "split"
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.scrolloff = 5
vim.o.sidescrolloff = 10
vim.o.exrc = true
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.wo.cursorcolumn = true
vim.g.nvchad_bold = 1
vim.g.rainbow_active = 1


vim.cmd([[
  func! s:transparent_background()
    highlight Normal guibg=None ctermbg=None
    highlight NonText guibg=None ctermbg=None
  endf
  autocmd ColorScheme * call s:transparent_background()
]])

