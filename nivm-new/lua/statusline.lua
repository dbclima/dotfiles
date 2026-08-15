-- Configuração do StatusBar
-- Para ver mais opções consultar:
-- :help statusline

-- Função para traduzir o código do modo para texto
local function current_mode()
  local mode_map = {
    ['n']   = 'NORMAL',
    ['no']  = 'NORMAL',
    ['nt']  = 'NORMAL',
    ['v']   = 'VISUAL',
    ['V']   = 'V-LINE',
    ['\22'] = 'V-BLOCK', -- Ctrl-V
    ['s']   = 'SELECT',
    ['S']   = 'S-LINE',
    ['\19'] = 'S-BLOCK',
    ['i']   = 'INSERT',
    ['ic']  = 'INSERT',
    ['R']   = 'REPLACE',
    ['Rv']  = 'V-REPLACE',
    ['c']   = 'COMMAND',
    ['cv']  = 'VIM EX',
    ['ce']  = 'EX',
    ['r']   = 'PROMPT',
    ['rm']  = 'MORE',
    ['r?']  = 'CONFIRM',
    ['!']   = 'SHELL',
    ['t']   = 'INSERT',
  }
  local m = vim.api.nvim_get_mode().mode
  return mode_map[m] or m
end

_G.current_mode = current_mode

vim.o.statusline = "[%-40(%{%v:lua.current_mode()%}] %f%)%=%S%=%40(%P %y%)"
-- Default status bar para referência
-- vim.o.statusline = [[%<%f\ %h%w%m%r%=%-14.(%l,%c%V%)\ %P]]
