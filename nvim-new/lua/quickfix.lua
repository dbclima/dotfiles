-- Quickfix List
vim.keymap.set('n', '<leader>q', function()
		local qf_open = false
		for _, win in ipairs(vim.fn.getwininfo()) do
				if win.quickfix == 1 then
						qf_open = true
				end
		end
		if qf_open then
				vim.cmd('cclose')
		else
				vim.cmd('copen')
		end
end, { desc = "[Q]uickFix List" })

local function add_current_line_to_qf()
		-- Captura as informações da posição atual do cursor
		local bufnr = vim.api.nvim_get_current_buf()
		local lnum = vim.fn.line('.')
		local col = vim.fn.col('.')
		local text = vim.api.nvim_get_current_line()

		-- Monta o item no formato esperado pela quickfix list
		local item = {
				bufnr = bufnr,
				lnum = lnum,
				col = col,
				text = vim.trim(text),
		}

		-- 'a' indica append (adicionar à lista existente)
		vim.fn.setqflist({ item }, 'a')

		-- Exibe uma mensagem rápida na command-line
		vim.notify(string.format('Adicionado ao Quickfix: L%d:C%d', lnum, col), vim.log.levels.INFO)
end

-- Atalho de exemplo: <leader>qa (Quickfix Add)
vim.keymap.set('n', '<leader>a', add_current_line_to_qf, { desc = '[A]diciona Linha ao QuickFix' })

vim.api.nvim_create_autocmd("FileType", {
		pattern = "qf",
		callback = function(evt)
				vim.keymap.set("n", "dd", function()
						local qf_list = vim.fn.getqflist()
						local current_idx = vim.fn.line(".")

						if #qf_list > 0 and current_idx <= #qf_list then
								table.remove(qf_list, current_idx)
								-- 'r' substitui a lista interna e força a atualização visual imediata
								vim.fn.setqflist(qf_list, "r")
						end
				end, { buffer = evt.buf, silent = true, desc = "Deletar item do Quickfix" })
		end,
})


vim.api.nvim_create_autocmd("FileType", {
		pattern = "qf",
		callback = function(evt)
				vim.keymap.set("n", "da", function()
						vim.cmd("call setqflist([])")
				end, { buffer = evt.buf, silent = true, desc = "Deletar todos os item do Quickfix" })
		end,
})
