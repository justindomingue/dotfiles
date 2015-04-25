" justindomingue/dotfiles/.vimrc

" Thanks & Resources {{{
" thanks -
"   github.com/mislav/vimfiles
"   github.com/seenmyfate/vim
"
" resources -
"   http://mislav.uniqpath.com/2011/12/vim-revisited/
"		http://nvie.com/posts/how-i-boosted-my-vim/
"		http://amix.dk/vim/vimrc.html
" }}}

" Pathogen {{{
execute pathogen#infect()
"}}}

" Basic Settings {{{
set nocompatible  " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd  " display incomplete commands
filetype plugin indent on  " load file type plugins + indentation
set number
set ruler  " show the line/column of the cursor position
set scrolloff=10
set wildmode=full
set laststatus=2  " Show status line always
set history=200
set undolevels=200
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o,*~
set title  " change the terminal's title
set visualbell  " don't beep
set noerrorbells  " don't beep
set nobackup
set noswapfile
set splitbelow  " more natural split opening
set splitright  " ^
set cursorline  " highlight the current line

set background=light
colorscheme tomorrow-night-eighties

" change the mapleader from \ to ,
let mapleader =  ","
let maplocalleader =  ",,"
" }}}

" Whitespace {{{
set tabstop=2 softtabstop=2 shiftwidth=2  " a tab is two spaces
set expandtab  " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode
set ai  " auto indent
set si  " smart indent
" }}}

" Searching {{{
set hlsearch  " highlight matches
set incsearch  " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase  " ... unless they contain at least one capital letter
set nrformats=  " treat all numerals as decimal
" }}}

" FileType-specific Settings {{{
" }}}

" Mappings {{{

" Leader Mappings {
nnoremap <leader>sv     :source $MYVIMRC<CR>
nnoremap <leader>ev     :split $MYVIMRC<CR>
nnoremap <leader>ww     :w<cr>
nnoremap <leader>-      O<esc>j " insert empty line above
nnoremap <leader>_      o<esc>k " insert empty libe below
nnoremap <leader>=      gg=G'.  " reindent file
nnoremap <leader>N      :setlocal number!<CR> " toggle number
nnoremap <leader>dd ^D

" Markdown
nnoremap <silent> <leader>mdc    :silent !./md-compile<CR><C-l>
nnoremap <silent> <leader>mdo    :silent !open coursenotes.html<CR><C-l>
nnoremap <F5> yyp<c-v>$r-
inoremap <F5> <esc>yyp<c-v>$r-A

" Add a character to a line ; returns to the exact location of mark  "q"
nnoremap <leader>an  mq02f"i\n<esc>`q
nnoremap <leader>a;    mqA;<esc>`q

" Leader Mappings for Plugin {
nnoremap <leader><left> :NERDTreeToggle<CR>
nnoremap <leader><right> :TlistToggle<CR>

" Fast insert mode exit
inoremap jk <esc>

" Map <Space> to search and Ctrl-<Space> to backward search
noremap <space> /
noremap <c-space> ?
noremap <silent> <leader><cr> :noh<cr>

" Switching between windows
nnoremap <up> <C-W><C-K>
nnoremap <down> <C-W><C-J>

" Switching between buffers
nnoremap <left> :bn<CR>
nnoremap <right> :bp<CR>

" Spell Checking {

" Pressing ,ss will toggle and untoggle spell checking
noremap <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
noremap <leader>sn ]s
noremap <leader>sp [s
noremap <leader>sa zg
noremap <leader>s? z=

" }}}

" Autocommands {{{

augroup reload_vimrc
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" }}}

" Vimscript File Settings {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Plugins {{{

"" CtrlP
let g:ctrlp_user_command = 'ag %s -l --nocolor -g  ""'  " Search with ag (the silver searcher) instead of ack

"" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline_theme  = 'powerlineish'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1

" }}}
