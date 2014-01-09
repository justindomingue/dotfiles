" justindomingue/dotfiles/.vimrc
" 
" thanks -
"   github.com/mislav/vimfiles
"   github.com/seenmyfate/vim
"
" resources -
"   http://mislav.uniqpath.com/2011/12/vim-revisited/
"		http://nvie.com/posts/how-i-boosted-my-vim/

"" start Pathogen
execute pathogen#infect()

" change the mapleader from \ to ,
let mapleader = ","

set nocompatible														" choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     						" display incomplete commands
filetype plugin indent on       						" load file type plugins + indentation
set number
set ruler                       						" show the line/column of the cursor position
set scrolloff=999               						" keep the curso in the middle of the scsreen
set wildmode=full
set history=200
set undolevels=200
set wildignore=*.swp,*.bak,*.pyc,*.class
set title																		" change the terminal's title
set visualbell															" don't beep
set noerrorbells														" don't beep
set nobackup
set noswapfile
set pastetoggle=<F2>												" switch to paste mode
colorscheme molokai

"" Whitespace
set nowrap                                  " wrap lines
set tabstop=2 softtabstop=2 shiftwidth=2    " a tab is two spaces 
set noexpandtab                             " use spaces, not tabs
set backspace=indent,eol,start              " backspace through everything in insert mode

"" Searching
set hlsearch																" highlight matches
set incsearch                   						" incremental searching
set ignorecase                  						" searches are case insensitive...
set smartcase                   						" ... unless they contain at least one capital letter
set nrformats=                  						" treat all numerals as decimal

"" Key mapping
" nnoremap <silent> [b :bprevious<CR>
" nnoremap <silent> ]b :bnext<CR>
" nnoremap <silent> [B :bfirst<CR>
" nnoremap <silent> ]B :blast<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ev :split $MYVIMRC<CR>>
inoremap <esc> <nop>
inoremap jk <esc>  

"" Abbreviations
:iabbrev @@ justin@justindomingue.com

"" Force myself
map <Left> :echo 'damnit!'<cr>
map <Right> :echo 'you suck!'<cr>
map <Up> :echo 'this is why you fail'<cr>
map <Down> :echo 'nooooo!'<cr>

"" Vim Latex
let g:tex_flavor='latex'
set grepprg=grep\ -nH\ $*

"" CtrlP
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'		" Search with ag (the silver searcher) instead of ack

"" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

"" Snipmate
imap	<Space><Space> <esc>a<Plug>snipMateNextOrTrigger
smap <Space><Space> <Plug>snipMateNextOrTrigger

"" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
