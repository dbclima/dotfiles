-- Configura a tecla leader como espaço
vim.g.mapleader = " "

-- Remove a seleção
vim.keymap.set(
        "n",
        "<leader><space>",
        ":nohlsearch<CR>",
        { desc= "Removes highlight from search" }
)

-- Abre a arvore de arquivos padrao netrw
vim.keymap.set(
        "n",
        "<leader>e",
        ":Neotree toggle<CR>",
        { desc= "Opens File Tree" }
)

-- Seleciona a janela em destaque
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc= "Go to Left Window" } )
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc= "Go to Down Window" } )
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc= "Go to Up Window" } )
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc= "Go to Right Window" } )

-- Retorna ao Normal mode ao apertar jj
vim.keymap.set("i", "jj", "<ESC>", { desc= "Return to Normal mode" } )

-- Move a linha de texto selecionada
vim.keymap.set("n", "<M-j>", ":m .+1<CR>==", { desc= "Move line down" } )
vim.keymap.set("n", "<M-k>", ":m .-2<CR>==", { desc= "Move line up" } )

vim.keymap.set(
        "i",
        "<C-Space>",
        "<C-x><C-o>",
        { noremap=true, silent=true, desc="AutoComplete" }
)

