" Arquivo de configuração do vim.

" PLUGGINS
" Utilizando vim-plug. Para baixar use um dos dois abaixo:
"
" LINUX: curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" WINDOWS: iwr -useb `
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim `
" | ni $HOME/vimfiles/autoload/plug.vim -Force

" Resolvendo problemas de portabilidade entre windows e linux
if has('win32') || has('win64')
        let s:plug_dir = '~/vimfiles/plugged'
        let s:plug_snip = '~/vimfiles/snippets'
else
        let s:plug_dir = '~/.vim/plugged'
        let s:plug_snip = '~/.vim/snippets'
endif

call plug#begin(s:plug_dir)

" Plugin de auto-fechamento de parenteses, aspas, etc
Plug 'jiangmiao/auto-pairs'

" Plugin de LSP (servidor de linguagem)
Plug 'prabirshrestha/vim-lsp' 
Plug 'mattn/vim-lsp-settings'

" Plugin de tema "gruvbox"
Plug 'morhetz/gruvbox'

call plug#end()

" don't try to be vi compatible
set nocompatible

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Leader key
let mapleader = " "

" Security
set modelines=0

" Show line numbers
set number
set relativenumber

" Show file stats
set ruler

" Elimina o alerta sonoro ao tentar executar um comando invalido
set noerrorbells
set novisualbell
set t_vb=

" Encoding
set encoding=utf-8

" Whitespace
" set wrap " Faz o texto pular a linha se for muito longo
set textwidth=79
" set formatoptions=tcqrn1
set tabstop=8
set shiftwidth=8
set softtabstop=0
set expandtab
set noshiftround

" Cursor motion
set scrolloff=5
set sidescrolloff=5
set backspace=indent,eol,start
runtime! macros/matchit.vim

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Formatting
map <leader>f gqip

" Modificacoes By Diogo

" Cosméticos
set colorcolumn=80
highlight ColorColumn ctermbg=235 guibg=#2c2c2c
set termguicolors
set t_Co=256
colorscheme gruvbox

" Menu de complecao no COMMAND mode apertando TAB
set wildmenu
set wildmode=longest:full,full

" REMAPS
" Sai do modo de inserção caso aperte "jj"
set timeoutlen=400
inoremap jj <ESC>
" Configura a complecao inteligente como "Control + Espaco"
inoremap <C-Space> <C-x><C-o>

" Remaps para a Árvore de arquivos
" Abre a arvore
nnoremap <leader>e :Vexplore<CR>
let g:netrw_winsize=25
" Abre a árvore: (0): Esquerda; (1): Direita
let g:netrw_altv=1
let g:netrw_browse_split=4
nnoremap <leader>q :b#<bar>bd#<CR>
let g:netrw_banner=0

" Alterna a janela para a direcao especificada
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Copia o que estiver selecionado para o clipboard
vnoremap <C-c> "+y
" Cola o que estiver no clipboard para o buffer atual 
nnoremap <C-v> "+p

" Move o conteudo uma linha pra baixo
nnoremap <M-j> :m .+1<CR>==
" Move o conteudo uma linha pra cima
nnoremap <M-k> :m .-2<CR>==

" Configura os atalhos do servidor de linguagem
" Acessa a definição de alguma funcao / variavel / classe
nnoremap gd :LspDefinition<CR>
" Acessa as ocorrencias de alguma funcao / variavel / classe
nnoremap gr :LspReferences<CR>
" Acessa a implementacao de alguma funcao / variavel / classe (pode mudar
" conforme a classe no caso de polimorfismo)
nnoremap gi :LspImplementation<CR>
" Abre um menu flutuante com a implementacao de alguma funcao / variavel, etc
nnoremap K  :LspHover<CR>
" Renomeia uma variavel / funcao / classe em todas as suas ocorrencias
nnoremap <F2> :LspRename<CR>
set t_Co=256


" Configura a complecao no terminal utilizando <C-n>
set completeopt=menuone,noinsert,noselect
set shortmess+=c

" Ajusta o cursor do Vim
set guicursor=

" Configura as buscas por arquivo como recursivas
set path+=**

" CONFIG LINGUAGEM
" Numero de espacos na tabulacao dependendo da linguagem de programacao
augroup FileTypeIndent
        autocmd!
        autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
        autocmd FileType c,cpp setlocal tabstop=8 shiftwidth=8
augroup END

augroup lsp_omnifunc
        autocmd!
        autocmd FileType c,cpp setlocal omnifunc=lsp#complete
        autocmd FileType python setlocal omnifunc=lsp#complete
augroup END

" Configurações do servidor de linguagem
let g:lsp_diagnostics_enabled=1
let g:lsp_diagnostics_signs_enabled=1
let g:lsp_diagnostics_virtual_text_enabled=0
let g:lsp_diagnostics_echo_cursor=1

" SNIPPETS
" Default .clangd para windows
nnoremap !clangd :-1read ~\vimfiles\snippets\dft_clangd.txt<CR>
nnoremap !cmain :-1read ~\vimfiles\snippets\cmain.txt<CR>ci<
nnoremap !pymain :-1read ~\vimfiles\snippets\pymain.txt<CR>jA
