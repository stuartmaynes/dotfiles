vim.g.lf_replace_netrw = 1
vim.g.lf_map_keys = 0

local keymap = require('lib.utils').keymap

keymap('n', '<leader>lf', '<cmd>LfWorkingDirectory<cr>')
