source ~/.vimrc.plugs

set nocompatible                  " be improved
let mapleader = ','

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
set hlsearch                     " highlight search results

" Highlight problematic whitespace
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" yank from cursor to end of line (more consistent with A, C, D, etc.)
nnoremap Y y$

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

" FIXME: this is all borked
" only use certain features when writing in <langs>,
" change colorscheme when using <langs>
" autocmd! BufEnter,BufNewFile *.clj,*.cljs,*.scm,*.js colorscheme gruvbox
" autocmd! BufLeave *.clj,*.cljs,*.scm,*.js colorscheme solarized
" if (&filetype == 'clojure') || (&filetype == 'scheme') || (&filetype == 'javascript')
"   " ranbow parentheses only for <langs>
"   au VimEnter * RainbowParenthesesActivate
"   au Syntax * RainbowParenthesesLoadRound
"   au Syntax * RainbowParenthesesLoadSquare
"   au Syntax * RainbowParenthesesLoadBraces
" endif
