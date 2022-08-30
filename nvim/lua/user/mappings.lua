local keymap = require('lib.utils').keymap

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Exit insert mode
keymap('i', 'jj', '<esc>')

-- Edit the current file under the cursor
keymap('n', '<leader>ef', '<cmd>edit <cfile><cr>')

-- Reselect visual selection after indenting
keymap('v', '<', '<gv')
keymap('v', '>', '>gv')

-- Quickly edit the keymappings and plugins file
keymap('n', '<leader>ep', '<cmd>vsplit ~/.config/nvim/lua/user/plugins.lua<cr>')
keymap('n', '<leader>em', '<cmd>vsplit ~/.config/nvim/lua/user/mappings.lua<cr>')
keymap('n', '<leader>eo', '<cmd>vsplit ~/.config/nvim/lua/user/options.lua<cr>')
keymap('n', '<leader>es', '<cmd>vsplit ~/.config/nvim/lua/user/snippets.lua<cr>')

-- Move between splits
keymap('n', '<C-J>', '<C-W><C-J>')
keymap('n', '<C-K>', '<C-W><C-K>')
keymap('n', '<C-H>', '<C-W><C-H>')
keymap('n', '<C-L>', '<C-W><C-L>')

-- Spilt management
keymap('n', '<leader>=', '<C-W>=')

-- Netrw
keymap('n', '<leader>ft', '<cmd>Sex!<cr>')

-- The Dead Zone!
-- nnoremap <Up> <nop>
keymap('i', '<Up>', '<nop>')
keymap('i', '<Down>', '<nop>')
keymap('i', '<Left>', '<nop>')
keymap('i', '<Right>', '<nop>')
keymap('n', '<Up>', '<nop>')
keymap('n', '<Down>', '<nop>')
keymap('n', '<Left>', '<nop>')
keymap('n', '<Right>', '<nop>')
