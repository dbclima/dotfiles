local lspconfig = require("lspconfig")

-- Configura LSPs utilizadas
lspconfig.clangd.setup({})
lspconfig.pyright.setup({})

local opts = { noremap = true, silent = true }

-- Remaps ligados ao LSP
-- Vai pra definição
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
-- Abre as referencias do token
vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
-- Revela a implementação (Bom pra classes Abstratas)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
-- Mostra a dica flutuante sobre a função sendo utilizada
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
-- Renomeia a variavel de forma global
vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, opts)
