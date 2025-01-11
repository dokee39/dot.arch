return {
    "neovim/nvim-lspconfig",
    cmd = { "Mason", "Neoconf" },
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig",
        "folke/neoconf.nvim",
        "folke/lazydev.nvim",
        {
            "j-hui/fidget.nvim",
            tag = "v1.5.0",
        },
        "nvimdev/lspsaga.nvim",

    },
    config = function()
        local servers = {
            lua_ls = {
                settings = {
                    Lua = {
                        workspace = { checkThirdParty = false },
                        telemetry = { enable = false },
                    },
                },
            },
            clangd = {},
            pyright = {},
            ruff = {},
            jsonls = {},
            marksman = {},
            volar = {},
            dockerls = {},
            docker_compose_language_service = {},
            bashls = {},
            taplo = {},
        }
        local on_attach = function(_, bufnr)
            -- Enable completion triggered by <c-x><c-o>
            local nmap = function(keys, func, desc)
                if desc then
                    desc = 'LSP: ' .. desc
                end
                vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
            end

            -- nmap('K', "<cmd>Lspsaga hover_doc<CR>", 'Hover Documentation')
            nmap('K', vim.lsp.buf.hover, 'Hover Documentation')

            nmap('<leader>k', vim.lsp.buf.signature_help, 'Signature Documentation')

            nmap('<leader>d', vim.lsp.buf.type_definition, 'Type [D]efinition')
            nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
            nmap('gd', require "telescope.builtin".lsp_definitions, '[G]oto [D]efinition')
            nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
            nmap('gi', require "telescope.builtin".lsp_implementations, '[G]oto [I]mplementation')

            nmap('<leader>rn', "<cmd>Lspsaga rename ++project<cr>", '[R]e[n]ame')
            nmap('<leader>ca', "<cmd>Lspsaga code_action<CR>", '[C]ode [A]ction')
            nmap('<leader>da', require "telescope.builtin".diagnostics, '[D]i[A]gnostics')

            nmap("<space>fm", function()
                vim.lsp.buf.format { async = true }
            end, "[F]ormat code")
            vim.keymap.set('v', '<leader>f', ':lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })
        end

        require("neoconf").setup()
        require("lazydev").setup()
        require("fidget").setup {
            notification = {
                window = {
                    winblend = 0
                }
            }
        }
        require("lspsaga").setup {
            ui = {
                code_action = ' ',
            },
        }

        require("mason").setup()
        -- local capabilities = require('cmp_nvim_lsp').default_capabilities()
        require("mason-lspconfig").setup({
            ensure_installed = vim.tbl_keys(servers),
            automatic_installation = false,
        })

        for server, config in pairs(servers) do
            require("lspconfig")[server].setup(
                vim.tbl_deep_extend("keep",
                    {
                        on_attach = on_attach,
                        -- capabilities = capabilities
                    },
                    config
                )
            )
        end

        local x = vim.diagnostic.severity
        vim.diagnostic.config({
            update_in_insert = false,
            severity_sort = true,
            virtual_text = { prefix = "" },
            signs = { text = { [x.ERROR] = "󰅙", [x.WARN] = "", [x.INFO] = "󰋼", [x.HINT] = "󰌵" } },
            underline = true,
            float = { border = "single" },
        })
    end
}
