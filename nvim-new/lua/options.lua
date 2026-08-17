-- Configura a aparencia do nvim
vim.o.number = true
vim.o.relativenumber = true
vim.o.cmdheight = 0
vim.o.colorcolumn = '80'
vim.o.showmode = false
vim.o.breakindent = true
vim.o.cursorline = true
vim.o.scrolloff = 5
vim.o.showcmd = true
vim.o.showcmdloc = 'statusline'
vim.g.have_nerd_font = true

-- Comportamento geral
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.confirm = true

-- Mostra as substituições enquanto digito
vim.o.inccommand = 'split'

-- Comportamento do tab
vim.o.tabstop = 4
vim.o.softtabstop = 4

-- Comportamento Splits
vim.o.splitright = true
vim.o.splitbelow = true

-- Undo funciona mesmo depois de reabrir o arquivo
vim.o.undofile = true
vim.o.autoread = true

-- Status Bar único independente de ter mais splits
vim.o.laststatus = 3

-- Habilita o mouse
vim.o.mouse = 'a'

-- Buscas ignoram maiúsculo amenos que busque por maiúsculo
vim.o.ignorecase = true
vim.o.smartcase = true

-- Faz com que o nvim e o sistema compartilhem o ClipBoard
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)


-- AutoCommands
-- Faz highlight no texto quando copiado
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})
