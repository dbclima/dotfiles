" Arquivo de configuração do vim.
" Configurações custumizadas a partir da linha 69. 

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

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

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
highlight ColorColumn ctermbg=245
set colorcolumn=80
highlight ColorColumn ctermbg=235 guibg=#2c2c2c

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
" Abre a árvore: (1): Esquerda; (0): Direita
let g:netrw_altv=1
let g:netrw_browse_split=4
nnoremap <leader>q :b#<bar>bd#<CR>
" Alterna para a janela esquerda
nnoremap <leader>h <C-w>h
" Alterna para a janela direita
nnoremap <leader>l <C-w>l

" Configura a complecao no terminal utilizando <C-n>
set completeopt=menuone,noinsert,noselect
set shortmess+=c

" Ajusta o cursor do Vim
set guicursor=

