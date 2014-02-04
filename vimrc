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
set nocompatible														" choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     						" display incomplete commands
filetype plugin indent on       						" load file type plugins + indentation
set number
set ruler                       						" show the line/column of the cursor position
set scrolloff=999               						" keep the curso in the middle of the scsreen
set wildmode=full
set laststatus=2                            " Show status line always
set history=200
set undolevels=200
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o,*~
set title																		" change the terminal's title
set visualbell															" don't beep
set noerrorbells														" don't beep
set nobackup
set noswapfile
set splitbelow                              " more natural split opening
set splitright                              " ^
set cursorline                              " highlight the current line

colorscheme kolor

" change the mapleader from \ to ,
let mapleader = ","
let maplocalleader = ",,"
" }}}

" Whitespace {{{
set nowrap                                  " wrap lines
set tabstop=2 softtabstop=2 shiftwidth=2    " a tab is two spaces 
set expandtab                               " use spaces, not tabs
set backspace=indent,eol,start              " backspace through everything in insert mode
set ai                                      " auto indent
set si                                      " smart indent
" }}}

" Searching {{{
set hlsearch																" highlight matches
set incsearch                   						" incremental searching
set ignorecase                  						" searches are case insensitive...
set smartcase                   						" ... unless they contain at least one capital letter
set nrformats=                  						" treat all numerals as decimal
" }}}

" FileType-specific Settings {{{
" }}}

" Mappings {{{

" Leader Mappings {
nnoremap <leader>sv     :source $MYVIMRC<CR>
nnoremap <leader>ev     :split $MYVIMRC<CR>
nnoremap <leader>ww     :w<cr>
nnoremap <leader>wq     :wq<CR>
nnoremap <leader>qq     :q!<CR>
nnoremap <leader>-      O<esc>j
nnoremap <leader>_      o<esc>k
nnoremap <leader>=      gg=G'.
nnoremap <leader>N      :setlocal number!<CR>

" Markdown
nnoremap <silent> <leader>mdc    :silent !./md-compile<CR><C-l>
nnoremap <silent> <leader>mdo    :silent !open coursenotes.html<CR><C-l>
nnoremap <F5> yyp<c-v>$r-
inoremap <F5> <esc>yyp<c-v>$r-A

" Add a character to a line ; returns to the exact location of mark "q"
nnoremap <leader>an  mq02f"i\n<esc>`q 
nnoremap <leader>a;    mqA;<esc>`q

" Leader Mappings for Plugin {
nnoremap <leader><left> :NERDTreeToggle<CR>
nnoremap <leader><right> :TlistToggle<CR>

" }
" Soft delete (only deletes text, not line)
nnoremap <leader>dd ^D
" }

" Fast insert mode exit
inoremap jk <esc>  

" File navigation, move up/down half a screen

" Map <Space> to search and Ctrl-<Space> to backward search
noremap <space> /
noremap <c-space> ?
noremap <silent> <leader><cr> :noh<cr>

" Switching between windows
nnoremap <up> <C-W><C-K>
nnoremap <down> <C-W><C-J>
nnoremap <left> <C-W><C-H>
nnoremap <right> <C-W><C-L>

" Spell Checking {

" Pressing ,ss will toggle and untoggle spell checking
noremap <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
noremap <leader>sn ]s
noremap <leader>sp [s
noremap <leader>sa zg
noremap <leader>s? z=

" }

" Folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
nnoremap <leader>zs :set foldmethod=syntax<CR>

" }}}

" Abbreviations {{{
" :iabbrev @@ justin@justindomingue.com " commented because of Vim's
" justin@justindomingue.com
:iabbrev -> →
" }}}

" Autocommands {{{

augroup debugging
  autocmd!
  autocmd FileType c* nnoremap <buffer> <leader>db o<cr>printf("\n");<cr><esc>-f"a
augroup END 

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
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'		" Search with ag (the silver searcher) instead of ack

"" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

imap ùù <esc>a<Plug>snipMateNextOrTrigger
smap ùù <Plug>snipMateNextOrTrigger

"" vim-markdown
let g:vim_markdown_initial_foldlevel=1

" }}}
