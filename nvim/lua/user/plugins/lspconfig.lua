local capabilities = require('cmp_nvim_lsp').default_capabilities(
    vim.lsp.protocol.make_client_capabilities()
)

local lsp_on_attach = function(_, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }

    vim.keymap.set('n', '<Leader>ck', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<Leader>cr', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', '<Leader>cd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', '<Leader>ct', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<Leader>ci', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<Leader>cf', vim.lsp.buf.format, bufopts)
    vim.keymap.set('n', '<Leader>cn', vim.diagnostic.goto_next, bufopts)
    vim.keymap.set('n', '<Leader>cp', vim.diagnostic.goto_prev, bufopts)
end

local lsp_flags = {
    debounce_text_changes = 150,
}

local lspconfig = require('lspconfig')

lspconfig.rust_analyzer.setup {
    on_attach = lsp_on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}

-- Go LSP configuration
-- https://github.com/golang/tools/tree/master/gopls
lspconfig.gopls.setup {
    on_attach = lsp_on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}

-- Python LSP configuration
--- https://github.com/python-lsp/python-lsp-server/blob/develop/CONFIGURATION.md
lspconfig.pylsp.setup {
    on_attach = lsp_on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
    settings = {
        pylsp = {
            plugins = {
                black = { enabled = true },
                flake8 = { maxLineLength = 120 },
                pycodestyle = { maxLineLength = 120 },
            },
        },
    },
}

-- JavaScript LSP configuration
lspconfig.eslint.setup {
    on_attach = lsp_on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}


-- HTML LSP configuration
lspconfig.html.setup {
    on_attach = lsp_on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

-- PHP LSP configuration
lspconfig.intelephense.setup {
    on_attach = lsp_on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

lspconfig.sumneko_lua.setup {
    on_attach = lsp_on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

lspconfig.julials.setup{
    on_attach = lsp_on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}
