" Author: Milan Darjanin <me@milandarjanin.com>
" Last update: 11/07/2015

colorscheme gruvbox
set background=dark

syntax enable

set encoding=utf-8

" Write Settings
set fileencoding=utf-8
set nobackup " do not keep the backup~ file

" Set to auto read when a file is changed from the outside
set autoread


" Space & Tabs
set tabstop=4
set softtabstop=2
set shiftwidth=2
set expandtab

" UI Config
set number
set showcmd
set cursorline
set ruler

" Navigation
set esckeys

" This both turns on filetype detection
" and allows loading of language specific
" indentation files based on that detection.
" For me, this means the python indentation file
" that lives at ~/.vim/indent/python.vim
" gets loaded every time I open a *.py file.
filetype indent on
set autoindent

set showmatch " highlight matching [{()}]

" Searching
set incsearch " do incremental search
set hlsearch " highlight search results
set ignorecase " do case insensitive search
set smartcase "unless capital letters are used

command W w " Sometimes I make that mistake

" Cheatsheet
" ^ ......... move to beginning of the line
" $ ......... move to end of the line
