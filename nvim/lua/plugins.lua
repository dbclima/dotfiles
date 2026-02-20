require("lazy").setup({

  -- Auto pairs
  {
    "jiangmiao/auto-pairs",
  },

  -- Tema
  require("theme"),

  -- Mason: instala binários de LSP, formatter, linter, etc.
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- LSP + integração automática
  {
    "williamboman/mason-lspconfig.nvim",
        dependencies = {
          "williamboman/mason.nvim",
          "neovim/nvim-lspconfig",
        },
        config = function()
          require("mason-lspconfig").setup({
            ensure_installed = {
              "clangd",
              "pylsp",
            },
            automatic_installation = true,
            -- Os handlers agora ficam aqui dentro:
            handlers = {
              function(server_name)
                require("lspconfig")[server_name].setup({})
              end,
              -- Você pode adicionar overrides específicos aqui, se quiser:
              -- ["lua_ls"] = function() ... end,
            },
          })
    end,
  },

})
