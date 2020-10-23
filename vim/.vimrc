"remember last update or view postion"
 " Only do this part when compiled with support for autocommands
 if has("autocmd")
 " In text files, always limit the width of text to 78 characters
 autocmd BufRead *.txt set tw=78
 " When editing a file, always jump to the last cursor position
 autocmd BufReadPost *
 \ if line("'\"") > 0 && line ("'\"") <= line("$") |
 \ exe "normal g'\"" |
 \ endif
 endif

set nu
syntax on
set completeopt=longest,menu
set ruler
set ts=2
set expandtab
set autoindent
set shell=/bin/bash

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'bling/vim-airline'
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

map <f2> :NERDTreeToggle<cr>
let g:NERDTreeWinPos='left'

colorscheme solarized
set background=dark
set t_Co=256
