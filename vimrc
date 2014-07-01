set nocompatible                  " be iMproved
filetype off                      " required by Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'        " a better status bar
set laststatus=2                  " don't wait for a split to appear to be visible
let g:airline_powerline_fonts=1   " use cool symbols

Plugin 'scrooloose/nerdtree'      " directory tree
Plugin 'kien/ctrlp.vim'           " fuzzy file search and opening
Plugin 'airblade/vim-gitgutter'   " show git diff in the gutter
Plugin 'scrooloose/syntastic'     " automatic syntax checking / linting
Plugin 'Valloric/YouCompleteMe'   " fast autocompletion
Plugin 'altercation/vim-colors-solarized'
Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-easytags'
call vundle#end()

filetype plugin indent on        " load plugins and indent files for the current filetyp

" force markdown filetype for *.md files
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

set number                       " show line numbers
syntax enable
set background=dark
colorscheme solarized


