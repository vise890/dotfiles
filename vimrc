set nocompatible                  " be iMproved
filetype off                      " required by Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/syntastic'     " automatic syntax checking / linting
Plugin 'elzr/vim-json'            " more kickass JSON syntax highlight

Plugin 'Shougo/neocomplete.vim'   " autocompletion
let g:neocomplete#enable_at_startup = 1

Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'   " show git diff in the gutter
Plugin 'kien/ctrlp.vim'           " fuzzy file search and opening

Plugin 'scrooloose/nerdtree'      " tree explorer
map <C-n> :NERDTreeToggle<CR>

Plugin 'bling/vim-airline'        " a better status bar
set laststatus=2                  " don't wait for a split to appear for airline to be visible
let g:airline_powerline_fonts=1   " use cool symbols

call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = ','

set mouse=a                      " automatically enable mouse
set mousehide                    " hide mouse cursor when typing

" move around windows more easily
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_

set wildmenu                     " show list instead of just completing
set wildmode=list:longest,full   " command <Tab> completion, list matches, then longest common part, then all.

set number                       " show line numbers
syntax enable                    " ...

set background=dark
colorscheme solarized

highlight clear SignColumn       " signColumn(gutter) should match background
highlight clear LineNr           " current line number row will have same background color in relative mode

set cursorline                   " highlight current line

set showmatch                    " show matching brackets/parenthesis
set hlsearch                     " highlight search terms

set nowrap                       " do not wrap long lines

" Highlight problematic whitespace
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

filetype plugin indent on        " load plugins and indent files for the current filetyp
autocmd BufNewFile,BufReadPost *.md set filetype=markdown " force markdown filetype for *.md files

" tabs, spaces and indentation and
set expandtab                    " tabs are spaces, not tabs
set tabstop=2                    " a tab is x spaces
set softtabstop=2                " insert x spaces when tab is pressed
set shiftwidth=2                 " use indents of 2 spaces
set smarttab                     " indent instead of tab at line start
set autoindent                   " indent at the same level of the previous line
set shiftround                   " round spaces to nearest shiftwidth multiple
set nojoinspaces                 " don't convert spaces to tabs

set backspace=indent,eol,start   " moar aggressive backspace

" yank from cursor to end of line
nnoremap Y y$
