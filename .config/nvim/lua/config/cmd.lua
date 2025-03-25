-- highlight
if not vim.g.vscode then
    local color = require("rose-pine.palette")
    vim.api.nvim_create_autocmd('ColorScheme', {
        pattern = '*',
        callback = function()
            vim.cmd("highlight CursorLine guibg=" .. color.overlay .. " guifg=NONE")
            vim.cmd("highlight Visual guibg=" .. color.surface .. " guifg=NONE gui=bold gui=underline")
        end
    })
    vim.cmd.colorscheme [[rose-pine-moon]]
end

-- filetype
vim.api.nvim_create_autocmd(
    { "BufRead", "BufNewFile" },
    {
        pattern = { ".ccm", "*.mpp", "*.cppm", "*.ixx" },
        callback = function()
            vim.bo.filetype = "cpp"
        end
    })
vim.api.nvim_create_autocmd(
    { "BufRead", "BufNewFile" },
    {
        pattern = { "*.mdx" },
        callback = function()
            vim.bo.filetype = "mdx"
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

if not vim.g.vscode then
    vim.api.nvim_create_autocmd("FileType", {
        pattern = "*",
        callback = function()
            local ft = vim.bo.filetype
            local has_parser = require("nvim-treesitter.parsers").get_parser_configs()[ft] ~= nil

            if has_parser then
                vim.bo.autoindent = false
                vim.bo.smartindent = false
            end
        end
    })
end
