vim.api.nvim_create_autocmd("BufEnter", {
		group = vim.api.nvim_create_augroup("AutoCloseSpecialBuffers", { clear = true }),
		callback = function()
				-- Pega todas as janelas válidas da aba atual
				local wins = vim.api.nvim_tabpage_list_wins(0)

				-- Se houver mais de uma janela, verifica se TODAS elas são janelas "especiais"
				local only_special_wins = true

				for _, win in ipairs(wins) do
						local buf = vim.api.nvim_win_get_buf(win)
						local ft = vim.bo[buf].filetype
						local bt = vim.bo[buf].buftype

						-- Condição: Se encontrar qualquer janela que NÃO seja terminal, netrw ou quickfix
						local is_terminal = bt == "terminal" or ft == "toggleterm"
						local is_netrw = ft == "netrw"
						local is_quickfix = ft == "qf" or bt == "quickfix"

						if not (is_terminal or is_netrw or is_quickfix) then
								only_special_wins = false
								break
						end
				end

				-- Se só sobraram janelas especiais, fecha o Neovim
				if only_special_wins then
						vim.cmd("qa!")
				end
		end,
})
