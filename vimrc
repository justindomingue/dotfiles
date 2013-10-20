" justindomingue/dotfiles/.vimrc
" 
" thanks -
"   github.com/mislav/vimfiles
"   github.com/seenmyfate/vim
"
" resources -
"   http://mislav.uniqpath.com/2011/12/vim-revisited/

"" Start Pathogen
execute pathogen#infect()

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set number
set ruler                       " show the line/column of the cursor position
set scrolloff=999               " keep the curso in the middle of the scsreen
" set spell                     " you know, just so I get spell check

"" Whitespace
set wrap                      " wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces 
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode
 
"" Searching
" set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Force myself
" map <Left> :echo 'damnit!'<cr>
" map <Right> :echo 'you suck!'<cr>
" map <Up> :echo 'this is why you fail'<cr>
" map <Down> :echo 'nooooo!'<cr>

