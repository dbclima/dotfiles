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
  -- Mason: instala binários de LSP, formatter, linter, etc. 
  {
    "williamboman/mason.nvim",
    config = function() require("mason").setup() end,
  },

  -- Integra Mason com lspconfig 
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        -- LSPs que você quer garantir que estejam instalados 
        ensure_installed =
        {
          "clangd",
        },
        -- (importante) permite setup automático 
        automatic_installation = true,
      })
    end,
  },

  -- Configuração do cliente LSP do Neovim 
  { "neovim/nvim-lspconfig", dependencies =
    {
          "williamboman/mason-lspconfig.nvim",
    },

    config = function()
      -- Setup explícito (simples por enquanto) 
      vim.lsp.config("pylsp", {})
      vim.lsp.config("clangd", {})

      -- Ativa os servidores
      vim.lsp.enable({ "pylsp", "clangd" })
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("neo-tree").setup({
        -- configuração entra aqui
        close_if_last_window = true,
        filesystem = {
          follow_current_file = { enabled = true }
        },
        window = {
          position = "right",
          width = 30,
        }
      })
    end,
  }

})
