local keymap = require('lib.utils').keymap

require("git-worktree").setup({})

-- Key mappings
keymap('n', '<leader>fw', [[<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>]])
keymap('n', '<leader>nb', [[<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>]])

