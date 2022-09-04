local opt = vim.opt

vim.cmd([[syntax on]])
vim.cmd([[filetype off]])
vim.cmd([[filetype plugin indent on]])
vim.cmd([[noswapfile]])


opt.hidden = true
opt.encoding = 'UTF-8'

opt.number = true
opt.relativenumber = true


-- Searching
opt.incsearch = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

-- Tabs and spaces
opt.autoindent = true
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.smartindent = true
opt.showmatch = true

opt.scrolloff = 8
opt.list = true
opt.listchars = 'tab:> ,trail:-,extends:>,precedes:<,nbsp:+'

opt.colorcolumn = "80"

-- Colour scheme
opt.termguicolors = true
-- vim.cmd([[colorscheme gruvbox]])
-- Transparent background
vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
-- Visual highlight
vim.cmd([[hi Visual guifg=#000000 guibg=#9978DB gui=none]])

-- Highlight the line the cursor is on
opt.cursorline = true
-- Colour of the cursor line
vim.cmd([[hi clear CursorLine]])
vim.cmd([[hi CursorLine gui=underline cterm=underline ctermfg=Yellow guifg=None]])

-- Highlight what was yanked
vim.cmd([[hi IncSearch guifg=#000000 guibg=#FFFFFF gui=none ctermbg=cyan ctermfg=black cterm=none]])
vim.cmd([[
  augroup HighlightYank
    autocmd!
    au textyankpost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup END
]])

-- Remove trailing whitespace on save
vim.cmd([[
  autocmd BufWritePre * %s/\s\+$//e
]])

-- Splits
opt.splitbelow = true
opt.equalalways = true

-- Wild
opt.wildmode = 'longest:full,full'
opt.wildignore = "__pycache__"
opt.wildignore = opt.wildignore + { "*.o", "*~", "*.pyc", "*pycache*" }

-- Tokyonight colorscheme
vim.g.tokyonight_style = "night"
vim.g.tokyonight_dark_sidebar = false
vim.g.tokyonight_transparent = true
vim.g.tokyonight_lualine_bold = true
vim.g.tokyonight_dark_float = false
vim.g.tokyonight_colors = { bg_float = "none" }
vim.cmd([[colorscheme tokyonight]])
