source ~/.vim/plugs.vim

set nocompatible                 " be IMproved
let mapleader = ' '

nnoremap <Leader><Space> :

imap jk <Esc>
imap JK <Esc>

" get rid of some annoyances in normal mode
" help
map <F1> <Nop>
map Q <nop>

set mousehide                    " hide mouse cursor when typing

set clipboard=unnamedplus        " use OS clipboard

setlocal spell spelllang=en_gb   " enable spell checking

" UI
set number                       " show line numbers
set background=dark
colorscheme solarized
highlight clear SignColumn       " signColumn(gutter) should match background
highlight clear LineNr           " current line number row will have same background color in relative mode
set cursorline                   " highlight current line
set showmatch                    " show matching brackets/parenthesis

" Highlight some types of whitespace
set list
set listchars=tab:›\ ,extends:#,nbsp:.

set hlsearch                     " highlight search results
set incsearch                    " search as you type

" if 'ignorecase' and 'smartcase' are both on, if a pattern contains an uppercase
" letter, it is case sensitive, otherwise, it is not
set ignorecase
set smartcase

" wrapping
set nowrap                       " do not wrap long lines
" move in a sane way when wrapping
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$
" shortcut for to wrap all lines at 80 characters without breaking any words,
" and preserve shorter lines:
nnoremap Q gqip

" yank from cursor to end of line (more consistent with A, C, D, etc.)
nnoremap Y y$

" Ignore all the crap
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*

" Paste MODE
noremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" move around
nmap <BS> <C-W>h
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AIRLINE: status bar
set laststatus=2                  " don't wait for a split to appear for airline to be visible
let g:airline_powerline_fonts = 0   " do not require patched font ...
let g:airline_left_sep = ''         " ... just use straight lines
let g:airline_right_sep = ''

" NERDTREE: file browser
map <C-n> :NERDTreeToggle<CR>

" AG: search with silver searcher
nnoremap <leader>a :Ag

" NEOCOMPLETE: autocompletion
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_auto_delimiter = 1
" <TAB>: completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
set completeopt-=preview          " don't open preview window all over the place

" PYTHON:
let g:flake_show_in_gutter = 1
