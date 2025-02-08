local option = vim.opt
local buffer = vim.b
local global = vim.g

-- Hint: use `:h <option>` to figure out the meaning if needed

-- ui
option.number = true -- show absolute number
option.relativenumber = true -- add numbers to each line on the left side
option.cursorline = true -- highlight cursor line underneath the cursor horizontally
option.splitbelow = true -- open new vertical split bottom
option.splitright = true -- open new horizontal splits right
option.termguicolors = true -- enable 24-bit RGB color in the TUI
option.showmode = false -- we are experienced, wo don't need the "-- INSERT --" mode hint
option.wrap = false
option.scrolloff = 5
option.sidescrolloff = 10

-- tab
option.tabstop = 4 -- number of visual spaces per TAB
option.softtabstop = 4 -- number of spacesin tab when editing
option.shiftwidth = 4 -- insert 4 spaces on a tab
option.expandtab = true -- tabs are spaces, mainly because of python
option.shiftround = true
option.autoindent = true
option.smartindent = true

-- search
option.incsearch = true -- search as characters are entered
option.hlsearch = true -- do not highlight matches
option.ignorecase = true -- ignore case in searches by default
option.smartcase = true -- but make it case sensitive if an uppercase is entered

-- other
option.clipboard = 'unnamedplus' -- use system clipboard
option.completeopt = { 'menuone', 'noselect' }
option.mouse = 'a' -- allow the mouse to be used in Nvim
option.exrc = true -- .nvim.lua
option.wildmenu = true
option.backspace = { "indent", "eol", "start" }
option.signcolumn = "yes"
option.autoread = true
option.title = true
option.updatetime = 50
option.swapfile = false
option.backup = false
option.undofile = true
option.undodir = vim.fn.expand('$HOME/.local/share/nvim/undo')

-- buffer
buffer.fileenconding = "utf-8"

-- global
global.mapleader = " "
global.maplocalleader = " "

