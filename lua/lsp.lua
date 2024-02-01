require('mason').setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require('mason-lspconfig').setup({
    -- A list of servers to automatically install if they're not already installed
    ensure_installed = { 'pylsp', 'gopls', 'lua_ls', 'rust_analyzer', 'clangd', 'hls', 'jdtls',  },
})




local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require('lspconfig')

lspconfig.clangd.setup {
    capabilities = capabilities,
}

lspconfig.hls.setup {
    capabilities = capabilities,
}

lspconfig.jdtls.setup {
    capabilities = capabilities,
}

lspconfig.pylsp.setup {
    capabilities = capabilities,
}

lspconfig.rust_analyzer.setup {
    capabilities = capabilities,
}

lspconfig.gopls.setup {
    capabilities = capabilities,
}




