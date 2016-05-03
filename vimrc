call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'ntpeters/vim-better-whitespace'
Plug 'kien/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
Plug 'eagletmt/neco-ghc', { 'for': 'haskell' }
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'godlygeek/tabular'
Plug 'ervandew/supertab'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'keith/tmux.vim'
Plug 'itchyny/vim-haskell-indent', { 'for': 'haskell' }
Plug 'mhinz/vim-startify'

call plug#end()

" Basic Settings {{{
set nocompatible                                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                                     " display incomplete commands
filetype plugin indent on                       " load file type plugins + indentation
set number
set ruler                                       " show the line/column of the cursor position
set scrolloff=10
set wildmenu
set wildmode=full
set laststatus=2                                " Show status line always
set history=200
set undolevels=1000
set undofile
set undodir=/Users/justindomingue/.vim/undo
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o,*~
set title                                       " change the terminal's title
set visualbell                                  " don't beep
set noerrorbells                                " don't beep
set nobackup
set noswapfile
set splitbelow                                  " more natural split opening
set splitright                                  " ^
set cursorline                                  " highlight the current line
set tags=tags;
set t_Co=256
set viminfo='100,n$HOME/.vim/files/info/viminfo

colorscheme wombat
set background=dark

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" change the mapleader from \ to ,
let mapleader =  ","
let maplocalleader =  ",,"
" }}}

" Whitespace {{{
set tabstop=2 softtabstop=2 shiftwidth=2 " a tab is two spaces
set expandtab                            " use spaces, not tabs
set backspace=indent,eol,start           " backspace through everything in insert
mode
set ai                                   " auto indent
set si                                   " smart indent
" }}}

" Searching {{{
set hlsearch   " highlight matches
set incsearch  " incremental searching
set ignorecase " searches are case insensitive...
set smartcase  " ... unless they contain at least one capital letter
set nrformats= " treat all numerals as decimal
" }}}

" Mappings {{{

" Fast insert mode exit
inoremap jk <esc>

" Remap <c-a> to <c-z> as <c-a> is my tmux prefix
noremap <c-z> <c-a>

" Map <Space> to search and Ctrl-<Space> to backward search
noremap <space> /
noremap <c-space> ?
noremap <silent> <leader><cr> :noh<cr>

" Switching between windows
nnoremap <up> <C-W><C-K>
nnoremap <down> <C-W><C-J>
noremap <leader><left> <C-W><C-H>
noremap <leader><right> <C-W><C-L>

" Switching between buffers
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>

" }}}

" Plugins {{{

" nerdtree

map <Leader>n :NerdTreeToggle<CR>

" CtrlP

let g:ctrlp_user_command = 'ag %s -l --nocolor -g  ""'  " Search with ag (the silver searcher) instead of ack
map <silent> <Leader>t :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'

" Syntastic

map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-airline
let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1

" ghc-mod

map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

" supertab

let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

if has("gui_running")
  imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
  if has("unix")
    inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  endif
endif

" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" tabularize

let g:haskell_tabular = 1

vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

" }}}
