local keymap = require('lib.utils').keymap

require('telescope').setup({
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
require('telescope').load_extension('fzf')
require('telescope').load_extension('live_grep_args')
require('telescope').load_extension('ui-select')
require('telescope').load_extension('harpoon')
require("telescope").load_extension("git_worktree")

-- Keymaps
keymap('n', '<leader><leader>', [[<cmd>lua require('telescope.builtin').resume()<cr>]])
keymap('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<cr>]])
keymap('n', '<leader>fc', [[<cmd>lua require('telescope.builtin').git_commits()<cr>]])
keymap('n', '<leader>fd', [[<cmd>lua require('telescope.builtin').diagnostics()<cr>]])
keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<cr>]])
keymap('n', '<leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]])
keymap('n', '<leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<cr>]])
keymap('n', '<leader>fi', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find({sorting_strategy="ascending"})<cr>]])
keymap('n', '<leader>fm', [[<cmd>lua require('telescope.builtin').man_pages()<cr>]])
keymap('n', '<leader>fr', [[<cmd>lua require('telescope.builtin').registers({sorting_strategy="ascending"})<cr>]])

