" Plugins
set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'crusoexia/vim-monokai'
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdTree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'ervandew/supertab'
Plugin 'JamshedVesuna/vim-markdown-preview'
call vundle#end()
filetype plugin indent on 

" Setting shortcuts
let mapleader = ","
let g:mapleader = ","

" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic

" Font Style
syntax on
set background=dark
set t_Co=256
colorscheme monokai
let g:monokai_thick_border = 1
let g:monokai_italic = 1

" Setting default config
set history=50
set tabstop=2 
set softtabstop=2 
set expandtab 
set shiftwidth=2 
set smarttab
set mouse=a
set autoindent
set number
set showmatch
set wildmenu
set nobackup
set nowb
set noswapfile
set lbr
set tw=500
set ai 
set si 
set wrap
set rnu

" Remember position when closing file, go back there when opening
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif
set viminfo^=%

set laststatus=2

autocmd VimEnter * NERDTree
