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

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    local diagnostics = vim.diagnostic.get(0, { lnum = vim.fn.line(".") - 1 })
    if #diagnostics > 0 then
      local d = diagnostics[1]
      local msg = d.message:gsub("\n", " ")
      vim.api.nvim_echo({ { msg, "WarningMsg" } }, false, {})
    end
  end,
})

vim.opt.updatetime = 300

-- Ativa completion do LSP via omnifunc
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    vim.bo[args.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
  end,
})
