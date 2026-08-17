local ignore_patterns = {
		"%.git",
		"%.cache",
		"dist",
		"build",
		"%.tmp",
		"%.log",
		"__pycache__",
}

function _G.native_find(text, _)
		local files = vim.fn.glob("**/*", true, true)
		local result = {}
		for _, f in ipairs(files) do
				if vim.fn.isdirectory(f) == 0 then
						local skip = false
						for _, pat in ipairs(ignore_patterns) do
								if f:match(pat) then
										skip = true
										break
								end
						end
						if not skip then
								result[#result + 1] = f
						end
				end
		end
		return vim.fn.matchfuzzy(result, text)
end
vim.opt.findfunc = "v:lua.native_find"

vim.keymap.set('n', '<leader>f', function()
		if vim.bo.buftype == 'terminal' then
				vim.cmd([[call feedkeys("\<ESC>", "n")]])
				vim.cmd('wincmd k')
				print("Teste")
		end

		-- Se estiver no netrw vai para a janela ao lado
		if vim.bo.filetype == 'netrw' then
				vim.cmd('wincmd l')
		end

		local keys = vim.api.nvim_replace_termcodes(':find ', true, false, true)
		vim.api.nvim_feedkeys(keys, 'n', false)
end, { desc = 'Atalho para Fuzzy[F]ind' })
