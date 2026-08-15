-- Definindo Space como tecla líder
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Opções gerais de visual e comportamento
require("options")

-- Configurações de seridores de linguagem (autocomplete)
require("lsp")

-- Configuração de tema
require("theme")

-- Configuração da árvore de arquivos
require("netrw")

-- Configurações de shortcuts
require("keymaps")

-- Configurações do terminal
require("terminal")

-- Configurações encerrar o nvim
require("exit")

-- Busca de arquivos
require("find")

-- Busca de palavras
require("grep")

-- Comandos para gestão de buffers
require("buffers")

-- StatusLine Config
require("statusline")

-- QuickFix
require("quickfix")
