local servers = {
    lua_ls = {
        settings = {
            Lua = {
                workspace = { checkThirdParty = false },
                telemetry = { enable = false },
            },
        },
    },
    clangd = {
        cmd = {
            "/usr/bin/clangd",
            "--header-insertion=never",
            "--experimental-modules-support",
        },
    },
    pyright = {},
    ruff = {},
    jsonls = {},
    marksman = {},
    volar = {},
    dockerls = {},
    docker_compose_language_service = {},
    bashls = {},
    taplo = {},
    astro = {},
    mdx_analyzer = {
        filetypes = { "mdx" },
    },
}


return {
    "neovim/nvim-lspconfig",
    cond = not vim.g.vscode,
    cmd = { "Mason", "Neoconf", "Navbuddy" },
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
        { "williamboman/mason.nvim", opts = {} },
        {
            "williamboman/mason-lspconfig",
            opts = {
                ensure_installed = table.insert(vim.tbl_keys(servers), 'clangd'),
                automatic_installation = false,
            },
        },

        { "folke/lazydev.nvim",      opts = {} },
        { "folke/neoconf.nvim",      opts = {} },
        {
            "j-hui/fidget.nvim",
            tag = "v1.5.0",
            opts = {
                notification = {
                    window = {
                        winblend = 0,
                    }
                }
            },
        },
        {
            "nvimdev/lspsaga.nvim",
            opts = {
                ui = {
                    code_action = ' ',
                },
                floaterm = {
                    height = 0.7,
                    width = 0.7,
                },
            },
            keys = {
                { '<A-f>', mode = { 'n', 't' }, '<cmd>Lspsaga term_toggle<cr>', },
            }
        },
        {
            "SmiteshP/nvim-navbuddy",
            dependencies = {
                "SmiteshP/nvim-navic",
                "MunifTanjim/nui.nvim"
            },
            keys = {
                { '<A-o>', '<cmd>Navbuddy<cr>', },
            },
            opts = {
                lsp = {
                    auto_attach = true,
                },
                window = {
                    border = 'rounded',
                    size = { height = "70%", width = "70%" },
                }
            }
        },
        {
            "p00f/clangd_extensions.nvim",
            commit = "8f7b72100883e0e34400d9518d40a03f21e4d0a6",
        },
    },
    config = function()
        local on_attach_keys = function(_, bufnr)
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
            nmap("gi", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")

            nmap("<leader>rn", "<cmd>Lspsaga rename ++project<cr>", "[R]e[n]ame")
            nmap("<leader>ca", "<cmd>Lspsaga code_action<CR>", "[C]ode [A]ction")
            nmap("<leader>da", require("telescope.builtin").diagnostics, "[D]i[A]gnostics")
            nmap("<leader>ds", "<cmd>Lspsaga show_line_diagnostics<CR>", "[D]iagnostics [S]how")

            nmap("<leader>fm", function()
                vim.lsp.buf.format { async = true }
            end, "[F]ormat code")
            vim.keymap.set('v', '<leader>fm', function()
                vim.lsp.buf.format { async = true }
                vim.cmd('normal! \27')
            end, { noremap = true, silent = true })
        end
        local on_attach_clangd = function(_, bufnr)
            on_attach_keys(_, bufnr)
            vim.keymap.set('n', 'L', '<cmd>ClangdSymbolInfo<cr>', { buffer = bufnr, silent = true })
            vim.keymap.set('n', 'H', '<cmd>ClangdSwitchSourceHeader<cr>', { buffer = bufnr, silent = true })

            require("clangd_extensions").setup {
                inlay_hints = {
                    inline                 = false,
                    max_len_align          = true,
                    parameter_hints_prefix = ' ',
                    other_hints_prefix     = '󰊰 ',
                },
                memory_usage = {
                    border = "rounded",
                },
                symbol_info = {
                    border = "rounded",
                },
            }
            require("clangd_extensions.inlay_hints").setup_autocmd()
            require("clangd_extensions.inlay_hints").set_inlay_hints()
        end
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        for server, config in pairs(servers) do
            local on_attach
            if server == 'clangd' then
                on_attach = on_attach_clangd
            else
                on_attach = on_attach_keys
            end
            require("lspconfig")[server].setup(
                vim.tbl_deep_extend("keep",
                    {
                        on_attach = on_attach,
                        capabilities = capabilities
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
