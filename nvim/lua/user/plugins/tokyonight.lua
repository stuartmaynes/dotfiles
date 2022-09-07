--vim.g.tokyonight_style = "night"
require("tokyonight").setup({
    dim_inactive = false,
    style = "night",
    transparent = true,
    terminal_colors = true,
})

vim.cmd([[colorscheme tokyonight]])
