source ~/.vimrc.plugs

set nocompatible                  " be improved
let mapleader = ','

" move around windows more easily
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_

set mouse=a                      " automatically enable mouse
set mousehide                    " hide mouse cursor when typing

" UI
set number                       " show line numbers
set background=dark
colorscheme solarized
highlight clear SignColumn       " signColumn(gutter) should match background
highlight clear LineNr           " current line number row will have same background color in relative mode
set cursorline                   " highlight current line
set showmatch                    " show matching brackets/parenthesis
set hlsearch                     " highlight search terms

" tabs, spaces and indentation
set expandtab                    " tabs are spaces, not tabs
set tabstop=2                    " a tab is x spaces
set softtabstop=2                " insert x spaces when tab is pressed
set shiftwidth=2                 " use indents of 2 spaces
set shiftround                   " round spaces to nearest shiftwidth multiple
set nojoinspaces                 " don't convert spaces to tabs

autocmd BufNewFile,BufReadPost *.md set filetype=markdown " force markdown filetype for *.md files

" yank from cursor to end of line (more consistent with A, C, D, etc.)
nnoremap Y y$

" WRAPPING
set nowrap                       " do not wrap long lines
" move in a sane way when wrapping
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NEOCOMPLETE: autocompletion
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#max_list = 15
" <TAB>: completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
set completeopt-=preview          " don't open preview window all over the place

" GHCMOD: haskell type info and error checking
autocmd BufWritePost *.hs GhcModCheckAndLintAsync " check and lint on write

" NERDTREE: file browser
map <C-n> :NERDTreeToggle<CR>

" AIRLINE: status bar
set laststatus=2                  " don't wait for a split to appear for airline to be visible
let g:airline_powerline_fonts=1   " use cool symbols

" TAGBAR: display tags in a window
nmap <F8> :TagbarToggle<CR>
