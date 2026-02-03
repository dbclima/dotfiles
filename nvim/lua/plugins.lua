require("lazy").setup({
  -- Auto pairs
  {
    "jiangmiao/auto-pairs",
  },

  -- Tema
  {
    "morhetz/gruvbox",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("gruvbox")
    end,
  },

  -- LSP
  {
    "neovim/nvim-lspconfig",
  },

  -- Autocomplete
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
  },
})