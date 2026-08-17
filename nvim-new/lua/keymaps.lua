-- Movimentação entre janelas
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move o Foco para a Janela a Esquerda" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move o Foco para a Janela Abaixo" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move o Foco para a Janela Acima" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move o Foco para a Janela a Direita" })

-- Atalho ESC no modo inserção
vim.keymap.set('i', 'jj', '<ESC>', { desc = 'Retorna ao modo Normal' })
vim.keymap.set('i', 'jJ', '<ESC>', { desc = 'Retorna ao modo Normal' })
vim.keymap.set('i', 'JJ', '<ESC>', { desc = 'Retorna ao modo Normal' })
vim.keymap.set('i', 'Jj', '<ESC>', { desc = 'Retorna ao modo Normal' })

-- Envolver seleção com *, (, {, ...
vim.keymap.set("v", "*", "c*<ESC>p*", { desc = "Envolve texto selecionado com *...*" })
vim.keymap.set("v", "(", "c(<ESC>pa)", { desc = "Envolve texto selecionado com (...)" })
vim.keymap.set("v", "{", "c{<ESC>pa}", { desc = "Envolve texto selecionado com {...}" })
vim.keymap.set("v", "[", "c[<ESC>pa]", { desc = "Envolve texto selecionado com [...]" })
vim.keymap.set("v", "\"", "c\"<ESC>pa\"", { desc = "Envolve texto selecionado com \"...\"" })
vim.keymap.set("v", "'", "c'<ESC>pa'", { desc = "Envolve texto selecionado com '...'" })
vim.keymap.set("v", "`", "c`<ESC>pa`", { desc = "Envolve texto selecionado com `...`" })

-- Move linha pra cima ou pra baixo com Alt-[j, k]
vim.keymap.set('n', '<M-j>', ':m .+1<CR>==', { desc = 'Move a Linha para cima' })
vim.keymap.set('n', '<M-k>', ':m .-2<CR>==', { desc = 'Move a Linha para baixo' })

-- Limpa a seleção de busca se apertar ESC
vim.keymap.set('n', '<ESC>', '<cmd>nohlsearch<CR>', { desc = 'Limpa a Seleção' })

-- Splita a tela verticalmente
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', { desc = "Splita a Window [V]erticalmente" })

-- Atalho para os arquivos de config
vim.keymap.set('n', '<leader>c', ":e $MYVIMRC<CR>", { desc = "Atalho para [C]onfigurações" })

-- Atalho para o menu de Ajuda
vim.keymap.set('n', '<leader>h', ':help ', { desc = "Atalho para [H]elp" })

-- Atalho para Copiar todas as linhas
vim.keymap.set('n', '<leader>ya', 'mwggyG`w', { desc = "[Y]ank [A]ll linhas do arquivo" })

-- Formata o arquivo inteiro
vim.keymap.set('n', '<leader><leader>', 'mwgg=G`w', { desc = "Formata o Arquivo" })
