require('nvim-treesitter.configs').setup({
  -- A list of parser names, or "all"
  ensure_installed = { "python", "go", "lua", "typescript", "javascript", "html" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

})
