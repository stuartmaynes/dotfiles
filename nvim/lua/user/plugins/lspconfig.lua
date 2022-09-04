local capabilities = require('cmp_nvim_lsp').update_capabilities(
    vim.lsp.protocol.make_client_capabilities()
)

local lsp_on_attach = function(_, bufnr)
    local bufopts = { noremap=true, silent=true, buffer=bufnr }

    vim.keymap.set('n', '<Leader>k', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', '<Leader>gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', '<Leader>gt', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<Leader>gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<Leader>dn', vim.diagnostic.goto_next, bufopts)
    vim.keymap.set('n', '<Leader>dp', vim.diagnostic.goto_prev, bufopts)
end

local lsp_flags = {
    debounce_text_changes = 150,
}

local lspconfig = require('lspconfig')

-- Go LSP configuration
lspconfig.gopls.setup{
    on_attach = lsp_on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}

-- Python LSP configuration
lspconfig.pylsp.setup{
    on_attach = lsp_on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
    settings = {
        pylsp = {
            plugins = {
                black = { enabled = true },
            },
        }
    },
}

-- JavaScript LSP configuration
lspconfig.eslint.setup{
    on_attach = lsp_on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

-- PHP LSP configuration
lspconfig.intelephense.setup{
    on_attach = lsp_on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}

lspconfig.sumneko_lua.setup{
    on_attach = lsp_on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}
