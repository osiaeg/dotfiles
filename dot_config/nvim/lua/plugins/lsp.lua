-- Setup language servers.
vim.lsp.config("gopls", {})

vim.lsp.config("rust_analyzer", {})

-- Ebuild lsp-server
-- lspconfig.termux_language_server.setup{}

-- vim.lsp.config("pyright", {})
vim.lsp.config("ty", {})


vim.lsp.config("eslint", {
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
})

-- Python lsp-server
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
  }
})

-- Global mapping
