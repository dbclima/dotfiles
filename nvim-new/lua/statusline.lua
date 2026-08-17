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
				['\22'] = 'V-BLOCK',
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

local function search_count()
		if vim.v.hlsearch == 0 then return "" end

		local ok, res = pcall(vim.fn.searchcount, { maxcount = 999, timeout = 250 })
		if not ok or res.total == 0 then return "" end

		if res.incomplete == 1 then
				return string.format("[%d/>%d]", res.current, res.total)
		elseif res.incomplete == 2 then
				return string.format("[>%d/>%d]", res.current, res.total)
		end

		return string.format("[%d/%d]", res.current, res.total)
end


-- Suas opções de comando
vim.o.showcmd = true
vim.o.showcmdloc = 'statusline'
vim.o.hlsearch = true

-- Statusline com %S (showcmd) E a função de busca
vim.o.statusline = "[%(%{%v:lua.current_mode()%}%)] %f %= %S %{%v:lua.search_count()%} %(%P %y%)"

_G.current_mode = current_mode
_G.search_count = search_count

vim.o.showcmd = true
vim.o.showcmdloc = 'statusline'
vim.o.statusline = "[%(%{%v:lua.current_mode()%}] %f%)%=%-5(%S%)%(%{%v:lua.search_count()%} %y %P%)"
-- Default status bar para referência
-- vim.o.statusline = [[%<%f\ %h%w%m%r%=%-14.(%l,%c%V%)\ %P]]
