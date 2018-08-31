" Filetype Processing {{{
filetype on     " Turn on filetype detection (by file extension)
syntax on       " Turn on syntax processing
" }}}

" Visual Display {{{
colorscheme wwdc17  " Sets the colorscheme (found in ~/.vim/colors directory)
set colorcolumn=120 " Highlights this column so I can see where to end lines
set number          " Show line numbers
set cursorline      " highlight the current line
set showmatch       " Highlight matching [{()}]
" }}}

" Indentation {{{
filetype indent on  " Load filetype-specific indent files
set tabstop=4       " Number of visual spaces per TAB character
set shiftwidth=4    " Number of spaces for automatic indentation and when you press >>, << or ==
set softtabstop=4   " Number of spaces in tab when editing (number added with <TAB> and removed with backspace)
set expandtab       " Turns <TAB> into spaces
set smartindent     " Automatically inserts a level of indentation when it detects it should
set autoindent      " Copies indentation from previous line when starting a new line
" }}}

" Searching {{{
set hlsearch        " Highlight matches
set incsearch       " Search as characters are entered
" }}}

" Folding {{{
set foldenable      " Enable folding
set foldlevelstart=10   " Opens most folds by default
set foldnestmax=10  " 10 nested fold max
" }}}

" Using arrow keys {{{
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W
set nocompatible
" }}}

" Plugins {{{
let mapleader = ','
call plug#begin('~/.vim/plugged') " Specify directory for plugins, avoiding standard names

" Loading Plugins
" Comment/uncomment code with ,cc
Plug 'tomtom/tcomment_vim'
noremap <silent> <Leader>cc :TComment<CR>

" Syntax highlighting/indent on demand, reloaded/reinstalled with ,v
Plug 'sheerun/vim-polyglot'

" Automatically closes characters with counterparts, like (), {}, [], etc
Plug 'spf13/vim-autoclose'

" Code navigation on classes, functions, types, etc
Plug 'xolox/vim-easytags'

call plug#end()
" }}}

" Misc {{{
set modelines=1 " Tells Vim to check the final line of the file for settings that should only be used on that file
" }}}

" vim:foldmethod=marker:foldlevel=0
