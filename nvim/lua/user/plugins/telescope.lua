local keymap = require('lib.utils').keymap
local telescope = require('telescope')

telescope.setup({
    defaults = {
        file_ignore_patterns = {
            "node_modules",
            "vendor",
        },
    },
    pickers = {
        buffers = {
            mappings = {
                n = {
                    dd = require('telescope.actions').delete_buffer
                }
            }
        },
    },
    extensions = {
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = 'smart_case', -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        },
        ['ui-select'] = {
            require('telescope.themes').get_dropdown({})
        },
    },
})
telescope.load_extension('fzf')
telescope.load_extension('live_grep_args')
telescope.load_extension('ui-select')
telescope.load_extension('harpoon')
telescope.load_extension("git_worktree")

-- Keymaps
keymap('n', '<leader><leader>', [[<cmd>lua require('telescope.builtin').resume()<cr>]])
keymap('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<cr>]])
keymap('n', '<leader>fc', [[<cmd>lua require('telescope.builtin').git_commits()<cr>]])
keymap('n', '<leader>fd', [[<cmd>lua require('telescope.builtin').diagnostics()<cr>]])
keymap('n', '<leader>fa', [[<cmd>lua require('telescope.builtin').find_files({hidden=true})<cr>]])
keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<cr>]])
keymap('n', '<leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]])
-- keymap('n', '<leader>fw', [[<cmd>lua require('telescope.builtin').grep_string()<cr>]])
keymap('n', '<leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<cr>]])
keymap('n', '<leader>fi', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find({sorting_strategy="ascending"})<cr>]])
keymap('n', '<leader>fm', [[<cmd>lua require('telescope.builtin').man_pages()<cr>]])
keymap('n', '<leader>fr', [[<cmd>lua require('telescope.builtin').registers({sorting_strategy="ascending"})<cr>]])
keymap('n', '<leader>fs', [[<cmd>lua require('telescope.builtin').spell_suggest()<cr>]])
keymap('n', '<leader>fw', [[<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>]])
keymap('n', '<leader>nb', [[<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>]])


