return {
    "hrsh7th/nvim-cmp",
    cond = not vim.g.vscode,
    event = { "BufReadPost", "BufNewFile" },

    ---DEPENDENCIES----------------------------------------------------------------------------------
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-cmdline",
        -- "f3fora/cmp-spell",
        {
            "uga-rosa/cmp-dictionary",
            opts = {
                paths = { "/usr/share/dict/words" },
                exact_length = 5,
            },
        },
        {
            "saadparwaiz1/cmp_luasnip",
            dependencies = {
                "L3MON4D3/LuaSnip",
                dependencies = {
                    "rafamadriz/friendly-snippets",
                }
            }
        },
        {
            "ofirgall/cmp-lspkind-priority",
            opts = {
                priority = {
                    'Snippet',
                    'Method',
                    'Function',
                    'Constructor',
                    'Field',
                    'Variable',
                    'Class',
                    'Interface',
                    'Module',
                    'Property',
                    'Unit',
                    'Value',
                    'Enum',
                    'Keyword',
                    'Color',
                    'File',
                    'Reference',
                    'Folder',
                    'EnumMember',
                    'Constant',
                    'Struct',
                    'Event',
                    'Operator',
                    'TypeParameter',
                    'Text',
                },
            }
        }
    },

    ---CONFIG----------------------------------------------------------------------------------------
    config = function()
        local has_words_before = function()
            unpack = unpack or table.unpack
            local line, col = unpack(vim.api.nvim_win_get_cursor(0))
            return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
        end

        require("luasnip.loaders.from_vscode").lazy_load()
        local luasnip = require("luasnip")
        local cmp = require 'cmp'

        cmp.setup {
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            experimental = {
                ghost_text = true,
            },
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body) -- For `luasnip` users.
                end,
            },

            sources = cmp.config.sources {
                {
                    name = "nvim_lsp",
                    -- max_item_count = 10,
                    entry_filter = function(entry, ctx)
                        return require('cmp.types').lsp.CompletionItemKind[entry:get_kind()] ~= 'Text'
                    end
                },
                { name = "nvim_lua" },
                { name = "path" },
                { name = "luasnip" },
                { name = "buffer" },
                {
                    name = "dictionary",
                    keyword_length = 3,
                },
                -- { name = "spell" },
            },

            sorting = {
                priority_weight = 2,
                comparators = {
                    require('cmp-lspkind-priority').compare, -- Replaces `compare.kind` + first comparator
                    cmp.config.compare.offset,
                    cmp.config.compare.exact,
                    -- cmp.config.compare.scopes,
                    cmp.config.compare.score,
                    cmp.config.compare.recently_used,
                    cmp.config.compare.locality,
                    cmp.config.compare.sort_text,
                    cmp.config.compare.length,
                    cmp.config.compare.order,
                    cmp.config.compare.kind,
                    cmp.config.compare.score,
                }
            },

            mapping = cmp.mapping.preset.insert {
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                        -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
                        -- they way you will only jump inside the snippet region
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    elseif has_words_before() then
                        cmp.complete()
                    else
                        fallback()
                    end
                end, { "i", "s" }),

                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            },
        }

        cmp.setup.cmdline('/', {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = 'buffer' },
                {
                    name = "dictionary",
                    keyword_length = 3,
                },

            }
        })

        cmp.setup.cmdline(':', {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({
                { name = 'path' },
                { name = 'cmdline' },
                {
                    name = "dictionary",
                    keyword_length = 3,
                },

            })
        })
    end,
}
