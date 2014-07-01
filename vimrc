set nocompatible                  " be iMproved
filetype off                      " required by Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'kien/ctrlp.vim'           " fuzzy file search and opening
Plugin 'airblade/vim-gitgutter'   " show git diff in the gutter
Plugin 'scrooloose/syntastic'     " automatic syntax checking / linting
Plugin 'Valloric/YouCompleteMe'   " fast autocompletion
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'        " a better status bar
set laststatus=2                  " don't wait for a split to appear to be visible
let g:airline_powerline_fonts=1   " use cool symbols
Plugin 'elzr/vim-json'            " more kickass JSON syntax highlight

call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = ','

set wildmenu                     " show list instead of just completing
set wildmode=list:longest,full   " command <Tab> completion, list matches, then longest common part, then all.

set mouse=a                      " automatically enable mouse
set mousehide                    " hide mouse cursor when typing

" move around windows more easily
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_

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

set autoindent                   " indent at the same level of the previous line
set shiftwidth=2                 " use indents of 2 spaces
set expandtab                    " tabs are spaces, not tabs

set backspace=indent,eol,start   " moar aggressive backspace

" yank from cursor to end of line
nnoremap Y y$
