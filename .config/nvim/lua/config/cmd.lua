-- highlight
if not vim.g.vscode then
    vim.cmd.colorscheme [[rose-pine-moon]]
end

-- filetype
vim.api.nvim_create_autocmd(
    { "BufRead", "BufNewFile" },
    {
        pattern = { "*.mpp", "*.cppm", "*.ixx" },
        callback = function()
            vim.bo.filetype = "cpp"
        end
    })

-- indent
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "javascript", "typescript", "html", "css", "json", "astro" },
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.shiftwidth = 2
    end
})
