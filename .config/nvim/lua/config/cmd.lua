-- highlight
if not vim.g.vscode then
    vim.cmd [[ colorscheme rose-pine-moon ]]
end

-- filetype
if not vim.g.vscode then
    vim.cmd [[ autocmd BufRead,BufNewFile *.mpp set filetype=cpp ]]
end
