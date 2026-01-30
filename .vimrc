" Arquivo de configuração do vim. Configurações custumizadas a partir da linha
" 69. 

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
set scrolloff=3
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

" Sai do modo de inserção caso aperte "jj"
set timeoutlen=400
inoremap jj <ESC>

