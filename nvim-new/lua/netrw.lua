-- Visão em árvore
vim.g.netrw_liststyle = 3

-- Esconde banner
vim.g.netrw_banner = 0

-- Configura tamanho window
vim.g.netrw_winsize = 20

-- Abre arquivos na janela anterior
vim.g.netrw_browse_split = 0

-- Ordena os arquivos por extensao
vim.g.netrw_sort_by = 'exten'

-- Abre a janela de arquivos na esquerda
vim.keymap.set("n", "<leader>e", ":Lexplore<CR>", { silent = true })

-- Desconfigura o <C-l> no netrw
vim.api.nvim_create_autocmd('FileType', {
		pattern = 'netrw',
		callback = function(args)
				-- Deleta o atalho local <C-l> criado pelo netrw.
				-- Isso faz o Neovim ignorar o atalho local e ir para o global
				pcall(vim.keymap.del, "n", "<C-l>", { buffer = args.buf })
		end,
})

vim.api.nvim_create_autocmd('FileType', {
		pattern = 'netrw',
		callback = function(args)
				-- Sobrescreve o '%' apenas nos buffers do netrw
				vim.keymap.set('n', '%', function()
						local filename = vim.fn.input('Novo arquivo: ')
						if filename == '' or not filename then
								return
						end

						-- Pega o diretório atual listado pelo netrw
						local dir = vim.b.netrw_curdir or vim.fn.expand('%:p:h')
						local filepath = dir .. '/' .. filename

						-- 1. Vai para a janela anterior (o editor principal ao lado)
						-- 2. Cria e abre o novo arquivo nessa janela
						vim.cmd('wincmd p')
						vim.cmd('edit ' .. vim.fn.fnameescape(filepath))
				end, { buffer = args.buf, desc = 'Criar arquivo e abrir na janela ao lado' })
		end,
})
