let nvim_path='~/.local/share/nvim/plugged'
call plug#begin(nvim_path)
" let vim_path='~/.vim/plugged'
" call plug#begin(vim_path)

Plug 'tpope/vim-sleuth'  " heuristically set buffer options (shiftwidth, expandtab, etc.)

" UI:
Plug 'altercation/vim-colors-solarized'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-airline/vim-airline'  " more kickass status bar
Plug 'vim-airline/vim-airline-themes'

" NAVIGATION:
Plug 'scrooloose/nerdtree'      " file tree
Plug 'kien/ctrlp.vim'           " fuzzy file search
Plug 'rking/ag.vim'             " search with ag

" UX:
Plug 'tpope/vim-unimpaired'     " pairs of bracket mappings
Plug 'scrooloose/syntastic'     " syntax check/lint
Plug 'airblade/vim-gitgutter'   " git diff in the gutter
Plug 'mbbill/undotree'

" EDITING:
Plug 'scrooloose/nerdcommenter' " comment stuff
Plug 'bronson/vim-trailing-whitespace' " highlight and fix whitespace
Plug 'tpope/vim-surround'       " fiddle with surrounding quotes/parens/tags/etc.
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/SudoEdit.vim' " read/write files with sudo
Plug 'Shougo/deoplete.nvim'         , { 'do': ':UpdateRemotePlugins' } " auto-completion

" LANGS:
"
Plug 'davidhalter/jedi-vim'         , { 'for': 'python' }
Plug 'nvie/vim-flake8'              , { 'for': 'python' }

Plug 'elzr/vim-json'                , { 'for': 'json' }
Plug 'guns/vim-clojure-static'
Plug 'stephpy/vim-yaml'
Plug 'cespare/vim-toml'
Plug 'ekalinin/Dockerfile.vim'

Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-markdown'
Plug 'freitass/todo.txt-vim'

call plug#end()
