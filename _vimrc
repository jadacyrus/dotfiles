set nocompatible
set backspace=2
let mapleader=","

" Filetype-specific indent files and syntax coloring
filetype plugin indent on
syntax on

" Spaces
set shiftwidth=2
set tabstop=2

" Tabs are spaces
set expandtab

" Show linenumber
set nu

" Highlight matching
set showmatch
set incsearch

set autoindent
set showcmd
set noeol
set cursorcolumn

" Support 256 colors
let &t_Co=256

" vim dispatch config
let test#strategy = 'dispatch'
let g:test#preserve_screen = 1

" colorscheme
colorscheme zazen

" Blackhole paste ,P
vnoremap <leader>p "_dP

call plug#begin('~/.vim/plugged')
  Plug 'kylef/apiblueprint.vim'
  Plug 'janko-m/vim-test'
  Plug 'tpope/vim-dispatch'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
  Plug 'hdima/python-syntax'
call plug#end()

" Map CTRL+P for fzf fuzzy search
nnoremap <C-p> :Files<CR>

" Hotkeys to move between split windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Hotkeys for running tests
nnoremap <leader>t :TestNearest<CR>
nnoremap <leader>T :TestFile<CR>
nnoremap <leader>a :TestSuite<CR>
nnoremap <leader>l :TestLast<CR>
nnoremap <leader>g :TestVisit<CR>


