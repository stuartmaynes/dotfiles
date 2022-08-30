local keymap = require('lib.utils').keymap

keymap('n', '<leader>ha', [[<cmd>lua require('harpoon.mark').add_file()<cr>]])
keymap('n', '<leader>hr', [[<cmd>lua require('harpoon.mark').rm_file()<cr>]])
keymap('n', '<leader>hl', [[<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>]])

keymap('n', '<leader>1', [[<cmd>lua require('harpoon.ui').nav_file(1)<cr>]])
keymap('n', '<leader>2', [[<cmd>lua require('harpoon.ui').nav_file(2)<cr>]])
keymap('n', '<leader>3', [[<cmd>lua require('harpoon.ui').nav_file(3)<cr>]])
keymap('n', '<leader>4', [[<cmd>lua require('harpoon.ui').nav_file(4)<cr>]])

keymap('n', '<leader>hm', [[<cmd>Telescope harpoon marks<cr>]])

