return {
    "stevearc/conform.nvim",
    cond = not vim.g.vscode,
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                python = { "black" },
                swift = { "swift_format" },
                lua = { "stylua" },
                typescriptreact = { "prettierd", "prettier" },
                html = { "prettierd", "prettier" },
                css = { "prettierd", "prettier" },
                php = { "pretty-php" },
            },
        })

        vim.keymap.set({ "n", "v" }, "<leader>fn>", function()
            conform.format({
                lsp_fallback = true,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end,
}
