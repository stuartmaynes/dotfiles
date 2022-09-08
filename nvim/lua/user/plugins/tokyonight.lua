local opt = vim.opt

require("tokyonight").setup({
    dim_inactive = false,
    style = "night",
    transparent = true,
    terminal_colors = true,
    sidebars = { "terminal", "packer" },
})

vim.cmd([[colorscheme tokyonight]])

-- Colour scheme
opt.termguicolors = true

-- Transparent background
vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])

-- Visual highlight
vim.cmd([[hi clear Visual]])
vim.cmd([[hi Visual guifg=white guibg=#9d7cd8 gui=none]])

-- Highlight the line the cursor is on
opt.cursorline = true

-- Colour of the cursor line
vim.cmd([[hi clear CursorLine]])
vim.cmd([[hi CursorLine gui=underline cterm=underline]])

-- Highlight what was yanked
vim.cmd([[hi clear IncSearch]])
vim.cmd([[hi IncSearch guifg=white guibg=#7aa2f7]])
vim.cmd([[
  augroup HighlightYank
    autocmd!
    au textyankpost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup END
]])


