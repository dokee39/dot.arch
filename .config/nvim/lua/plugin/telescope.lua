return {
    'nvim-telescope/telescope.nvim',
    cond = not vim.g.vscode,
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release',
        },
    },

    keys = {
        {'<leader>ff', require('telescope.builtin').find_files, desc = 'Telescope find files' },
        {'<leader>fg', require('telescope.builtin').live_grep, desc = 'Telescope live grep' },
        {'<leader>fb', require('telescope.builtin').buffers, desc = 'Telescope buffers' },
        {'<leader>fh', require('telescope.builtin').help_tags, desc = 'Telescope help tags' },
        {'<leader>fo', require('telescope.builtin').oldfiles, desc = 'Telescope old files' },
        {'<leader><space>', require('telescope.builtin').current_buffer_fuzzy_find, desc = 'Telescope current_buffer_fuzzy_find' },
    },

    config = function()
        require("telescope").setup {
            defaults = {
                path_display = { "truncate" },
                sorting_strategy = "ascending",
                layout_config = {
                    prompt_position = "top",
                    preview_width = 0.618
                },
            },
            extensions = {
                fzf = {
                    fuzzy = true,                    -- false will only do exact matching
                    override_generic_sorter = true,  -- override the generic sorter
                    override_file_sorter = true,     -- override the file sorter
                    case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                                     -- the default case_mode is "smart_case"
                }
            }
        }

        -- To get fzf loaded and working with telescope, you need to call
        -- load_extension, somewhere after setup function:
        require('telescope').load_extension('fzf')
    end,
}

