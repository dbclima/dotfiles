-- Configura a tecla leader como espaço
vim.g.mapleader = " "

-- Abre a arvore de arquivos padrao netrw
vim.keymap.set("n", "<leader>e", vim.cmd.Explore)

-- Seleciona a janela em destaque
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")

