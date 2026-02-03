local augroup = vim.api.nvim_create_augroup

local ft_indent = augroup("FileTypeIndent", { clear = true })

-- Configura a tabulacao em arquivos python como 4 espacos
vim.api.nvim_create_autocmd("FileType", {
  group = ft_indent,
  pattern = "python",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
  end,
})