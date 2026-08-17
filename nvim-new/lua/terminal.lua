local term_buf = nil
local term_win = nil
local term_group = vim.api.nvim_create_augroup('terminal', { clear = true })

vim.api.nvim_create_autocmd({ "TermOpen" }, {
		group = term_group,
		pattern = "*",
		callback = function()
				vim.opt_local.number = false
				vim.opt_local.relativenumber = false
				-- Inicia o terminal no modo de insercao
				-- vim.cmd("startinsert")

		end,
})

vim.keymap.set('n', '<leader>t', function()
		if term_win and vim.api.nvim_win_is_valid(term_win) then
				vim.api.nvim_win_close(term_win, true)
				term_win = nil
				return
		end

		if term_buf and vim.api.nvim_buf_is_valid(term_buf) then
				vim.cmd('botright 15split')
				term_win = vim.api.nvim_get_current_win()
				vim.api.nvim_win_set_buf(term_win, term_buf)
				vim.cmd('startinsert')
		else
				vim.cmd('botright 15split | terminal')
				term_win = vim.api.nvim_get_current_win()
				term_buf = vim.api.nvim_get_current_buf()
		end
end, { desc = 'Toggle [T]erminal' })

vim.keymap.set('t', '<ESC>', [[<C-\><C-n>]], { desc = 'Retorna ao modo Normal' })
vim.keymap.set('t', 'jj', [[<C-\><C-n>]], { desc = 'Retorna ao modo Normal' })
vim.keymap.set('t', 'jJ', [[<C-\><C-n>]], { desc = 'Retorna ao modo Normal' })
vim.keymap.set('t', 'JJ', [[<C-\><C-n>]], { desc = 'Retorna ao modo Normal' })
vim.keymap.set('t', 'Jj', [[<C-\><C-n>]], { desc = 'Retorna ao modo Normal' })

