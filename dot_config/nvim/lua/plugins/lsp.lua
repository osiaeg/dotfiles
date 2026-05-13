-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Setup language servers.
vim.lsp.config("gopls", {capabilities = capabilities})

vim.lsp.config("rust_analyzer", {capabilities = capabilities})

-- Ebuild lsp-server
-- lspconfig.termux_language_server.setup{}

vim.lsp.config("eslint", {
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
    capabilities = capabilities
})

-- Python lsp-server
-- vim.lsp.config("pyright", {capabilities = capabilities})
vim.lsp.config("ty", {capabilities = capabilities})
vim.lsp.config("ruff", {
    init_options = {
    settings = {
        format = {
            args = { 
                "--line-length=99" 
            } 
        },
        lint = {
            args = { 
                "--line-length=99",
            },
        },
    }
  },
  capabilities = capabilities
})

-- Global mapping
