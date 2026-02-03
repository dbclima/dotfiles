-- Não tenta ser compatível com vim antigo
vim.opt.compatible = false

-- Código de codificação de texto
vim.opt.encoding = "utf-8"

-- Permite ocultar buffers não salvos
vim.opt.hidden = true

-- Habilita mais cores no terminal
vim.opt.termguicolors = true

-- Revela o numero das linhas de forma relativa a linha atual
vim.opt.number = true
vim.opt.relativenumber = true

-- Habilita a linha vertical na coluna 80 para delimitar o codigo
vim.opt.ruler = true

-- Configura a barra de status
vim.opt.laststatus = 2      -- Mostra a barra o tempo todo
vim.opt.showmode = true
vim.opt.showcmd = true

-- Configura a busca por palavras no arquivo
vim.opt.hlsearch = true     -- Highlight na busca
vim.opt.incsearch = true    -- 
vim.opt.ignorecase = true   -- Ignora caixa alta
vim.opt.smartcase = true    -- Se procurar com caixa alta respeita caixa alta

-- Configura a tabulação
vim.opt.tabstop = 8         -- Tabs com 8 espacos
vim.opt.shiftwidth = 8      -- 
vim.opt.expandtab = true    -- 

-- 
