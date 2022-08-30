local keymap = require('lib.utils').keymap

keymap('n', '<F2>', '<cmd>FloatermToggle Scratch<CR>')
keymap('t', '<F2>', '<C-\\><C-n><cmd>FloatermToggle Scratch<CR>')
keymap('n', '<F3>', '<cmd>FloatermNew --name=Lazygit --autoclose=2 lazygit<cr>')

vim.g.floaterm_autoinsert = 1
vim.g.floaterm_opener = "vsplit"

vim.cmd([[
  highlight link FloatermBorder CursorLineBg
]])

