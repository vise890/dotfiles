source ~/.vimrc.plugs

set nocompatible                 " be improved
let mapleader = ' '

nnoremap <Leader><Space> :

imap jk <Esc>

" get rid of some annoyances in normal mode
" help
nnoremap <F1> <Nop>

set mouse=a                      " automatically enable mouse
set mousehide                    " hide mouse cursor when typing

setlocal spell spelllang=en_gb   " enable spell checking

" UI
set number                       " show line numbers
set background=dark
colorscheme solarized
highlight clear SignColumn       " signColumn(gutter) should match background
highlight clear LineNr           " current line number row will have same background color in relative mode
set cursorline                   " highlight current line
set showmatch                    " show matching brackets/parenthesis

" Highlight problematic whitespace
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

set hlsearch                     " highlight search results
set incsearch                    " search as you type

" if 'ignorecase' and 'smartcase' are both on, if a pattern contains an uppercase
" letter, it is case sensitive, otherwise, it is not
set ignorecase
set smartcase

" WRAPPING
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
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NEOCOMPLETE: autocompletion
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#max_list = 15
" <TAB>: completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
set completeopt-=preview          " don't open preview window all over the place

" NERDTREE: file browser
map <C-n> :NERDTreeToggle<CR>

" GUNDO: undo tree
nnoremap <leader>u :GundoToggle<CR>

" AG: search with silver searcher
nnoremap <leader>a :Ag 

" AIRLINE: status bar
set laststatus=2                  " don't wait for a split to appear for airline to be visible
let g:airline_powerline_fonts = 0   " do not require patched font ...
let g:airline_left_sep = ''         " ... just use straight lines
let g:airline_right_sep = ''
