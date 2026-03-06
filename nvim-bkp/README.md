# NEOVIM
A seguir as configurações do `neovim`.

## Setup
É necessário ter o `neovim` acima da `versão 0.8.x`, o que normalmente não é
alcançável com o instalador de pacotes default (`apt`).

### Buildando da Source
É recomendável instalar o `neovim` diretamente de seu repositório no
[github](https://github.com/neovim/neovim).

[Instruções](https://github.com/neovim/neovim/wiki/Building-Neovim/688be28f98c18e73b5043879b5963287a9b13d6c) <---

## Estrutura de arquivos
### init.lua
Configuração que carrega os demais arquivos.

### lua/autocmds.lua
Arquivo que define os autocomandos do nvim.

### lua/keymaps.lua 
Arquivo que define os remaps do nvim.

Exemplo de uso:
~~~bash
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc= "Go to Left Window" } )
~~~

### lua/lsp.lua
Arquivo que configura os servidores de linguagem no nvim.

### lua/options.lua
Arquivo que define o prompt inicial do sistema.

Exemplo de uso:
~~~bash
vim.opt.encoding = "utf-8"
~~~ 

### lua/plugins.lua
Arquivo que configura os plugins no nvim.

Exemplo de uso:
~~~bash
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
~~~~
