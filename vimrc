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
call vundle#end()
filetype plugin indent on 

" Setting shortcuts
let mapleader = ","
let g:mapleader = ","
nmap <leader>s :w!<cr>
nmap <leader>l :tabn<cr>
nmap <leader>h :tabp<cr>
nmap <leader>o :tabe<space>
nmap <leader>q :q<cr>
nmap <leader>f /
nmap <leader>d *
nmap <leader>a <C-n>
inoremap CC <Esc>C
inoremap SS <Esc>S
inoremap DD <Esc>dd
inoremap UU <Esc>u
inoremap II <Esc>I
inoremap AA <Esc>A
inoremap OO <Esc>o
inoremap YY <Esc>yy
inoremap PP <Esc>p

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