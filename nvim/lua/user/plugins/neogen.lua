require('neogen').setup({
    enabled = true,
    snippet_engine = "luasnip"
})

-- Keymaps
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<Leader>cb", ":lua require('neogen').generate()<CR>", opts)
