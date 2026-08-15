vim.keymap.set('n', '<leader>b', function()
		vim.cmd("ls")

		local keys = vim.api.nvim_replace_termcodes(':buffer ', true, false, true)
		vim.api.nvim_feedkeys(keys, 'n', false)
end,
{ desc = "Menu [B]uffers" })
