set encoding=utf-8

"" Vundle Sections
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/     "required

"call vundle#rc()
call neobundle#rc(expand('~/.vim/bundle/'))

" Vundle manage Vundle; required
" Bundle 'gmarik/vundle'
" Let NeoBundle manage NeoBundle; required
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" on github
NeoBundle 'nelstrom/vim-visual-star-search'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-fugitive'
"Bundle 'tpope/vim-classpath'
NeoBundle 'guns/vim-clojure-static'
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'altercation/vim-colors-solarized.git'
NeoBundle 'tarruda/vim-conque-repl'
NeoBundle 'rosenfeld/conque-term'
NeoBundle 'Shougo/vimproc' , {'build' : 'make -f make_unix.mak'}
NeoBundle 'eagletmt/ghcmod-vim'
NeoBundle 'Shougo/unite.vim'


"on vim-scriptsBundle 'paredit.vim''

"on vim-scripts
NeoBundle 'paredit.vim'
"" native plugins
runtime macros/matchit.vim
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

filetype plugin indent on
syntax enable

"" Whitespace
set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
"use <C-l> to ckear the highlighting of :set hlsearch.
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" buffer navigation mappings:
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" Unite mapping
nnoremap <Leader>f :Unite -start-insert file_rec<CR>

" misc. key mapping
imap jk <Esc>

" status line settings
set laststatus=2
set ruler
set showcmd
set wildmenu

" divers:
set hidden
set smarttab

" rainbow parenthese settings
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"" display settings
let &colorcolumn=join(range(110,255),',')
set background=dark
colorscheme solarized

let g:airline_theme='solarized'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''

" status line
let g:airline_section_z = ' %l / %L : %c '

" copyboard
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

if has("gui_running")
  " font
  set guifont=Source\ Code\ Pro\ for\ Powerline\ Light\ 10
  " remove toolbar
  set guioptions-=T
  " set colorscheme
  set background=dark
  colorscheme solarized

endif

"" language specific
" haskell
map <silent> <Leader>e :GhcModCheck<CR>
