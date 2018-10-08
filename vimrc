" Plugins
set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'crusoexia/vim-monokai'
Plugin 'airblade/vim-gitgutter'
Plugin 'easymotion/vim-easymotion'
Plugin 'raimondi/delimitmate'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'
call vundle#end()
filetype plugin indent on 

set clipboard=unnamedplus

" Setting shortcuts
nmap <CR> :
nmap \ :CtrlPLine<CR>
nmap / :CtrlPLine<CR>
imap <C-c> <Esc>
vmap <C-t> <S->>
vmap <C-d> <S-<>
nmap <C-t> i<C-t>
nmap <C-d> i<C-d>
nmap F <Plug>(easymotion-F)
nmap f <Plug>(easymotion-f)
nmap w <Plug>(easymotion-bd-w)
nmap l :bnext<cr>
nmap h :bprev<cr>
nmap L :vs<cr>
nmap H :vs<cr>
nmap k :bdelete<cr>
nmap K :sp<cr>
nmap J :sp<cr>
nmap j <C-p>

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


" Go to last file if invoked without arguments.
autocmd VimEnter * nested if
  \ argc() == 0 &&
  \ bufname("%") == "" &&
  \ bufname("2" + 0) != "" |
  \   exe "normal! `0" |
  \ endif
