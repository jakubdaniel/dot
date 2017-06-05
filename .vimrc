set nocompatible
filetype off
filetype plugin on
filetype indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

let g:airline_powerline_fonts = 1
let g:airline_left_sep  = ''
let g:airline_right_sep = ''

set t_Co=256
set background=dark

set laststatus=2

set encoding=utf-8
set ffs=unix

set noexpandtab
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set list
"set listchars=tab:»\ ,trail:·,eol:↵
set listchars=tab:»\ ,trail:·

set lbr
"set tw=80
set ai
set si
"set spell

syntax on
filetype on
set number
set nowrap

set wildmode=longest,list
set wildmenu
set ruler
set autoread
set nobackup
set nowb
set noswapfile
set showmatch
set mat=2
