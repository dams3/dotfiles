"========================================
" Plugins
"========================================

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'


call vundle#end()
filetype plugin indent on

"=======================================
" UltiSnips
"=======================================

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

"=======================================
" Basic Settings
"=======================================
syntax on
set number relativenumber
set showcmd
set ruler
set nowrap
set colorcolumn=80
set title
set mouse=a
set backspace=indent,eol,start

set noexpandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set scrolloff=8
set matchpairs+=<:>

set autowrite

set incsearch
set nohlsearch
set ignorecase
set smartcase

set cmdheight=2

"=======================================
" Remaps
"=======================================
inoremap jk <ESC>

let mapleader = " "
noremap <Leader>v <ESC>:vsplit<CR>
noremap <Leader>h <C-w><C-h>
noremap <Leader>l <C-w><C-l>
noremap <Leader>> 10<C-w>>
noremap <Leader>< 10<C-w><
" noremap <Leader>e <ESC>:e .<CR>
noremap <Leader>a ggVG

"=======================================
" CP
"=======================================
noremap <F6> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -O2 -o %<.out % && ./%<.out < inp<CR>
inoremap <F6> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -O2 -o %<.out % && ./%<.out < inp<CR>
noremap <F5> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -O2 -o %<.out % && ./%<.out <CR>
inoremap <F5> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -O2 -o %<.out % && ./%<.out <CR>
