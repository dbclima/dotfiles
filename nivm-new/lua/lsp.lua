-- Ativa os servidores de linguagem
vim.lsp.enable("lua_ls")
vim.lsp.enable("clangd")
vim.lsp.enable("basedpyright")
vim.lsp.enable("ruff")
vim.lsp.enable("bashls")
vim.lsp.enable("jdtls")

-- Configura como os diagnosticos aparecem na tela e nas dicas
-- flutuantes
vim.diagnostic.config {
		update_in_insert = false,
		severity_sort = true,
		float = { border = 'rounded', source = 'if_many' },
		underline = { severity = { min = vim.diagnostic.severity.WARN } },

		virtual_text = true,
		virtual_lines = false,

		-- Abre a descrição do erro em janela flutuante quando usando ']d' ou '[d'
		jump = { float = true  },
}

-- Configura o omnicomplete como Ctrl + Space
vim.keymap.set('i', '<C-Space>', '<C-x><C-o>', { desc = 'Sugerir Compleções' })
vim.cmd("set completeopt+=noselect")
