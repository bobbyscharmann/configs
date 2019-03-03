set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'davidhalter/jedi-vim'
"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
":PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set relativenumber
set nu

" Highlight the current line
hi CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkred guifg=white
set cursorline

" Replace Tabs with spaces
set tabstop=4
set expandtab
set softtabstop=4

" Highlight the characters beyond 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set colorcolumn=80

" Configure NERDTree like setup view
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

