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
Plugin 'scrooloose/nerdtree'
" Adds useful info in a status bar at the bottom of the window
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'"All of your Plugins must be added before the following line
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

" Allow jj in insert mode to switch to normal mode
inoremap jj <ESC>

" Highlight the current line
hi CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkred guifg=white

" Highlight the characters beyond 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set colorcolumn=80

set backspace=indent,eol,start
set autoindent
set tabstop=4 "number of visual spaces per tab
set shiftwidth=4 "on pressing tab, insert 4 spaces
set softtabstop=4
set expandtab
set number "shows line numbers
set cursorline "highlights the current line
set showmatch "highlights the matching parenthesis you are currently on
set nohlsearch "highlights the matches during searches
set incsearch "live search as characters are entered
set ruler
set foldenable
set foldlevelstart=10
set foldmethod=indent
set showcmd

set t_Co=256
syntax enable "enables syntax colors
"colorscheme deus "changes the syntax colors

let mapleader=","
let NERDTreeShowLineNumbers=1
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1


noremap <space> za
nnoremap <leader>w :w<CR>
nnoremap <leader>j Lzt
nnoremap <leader>k Hzb
nnoremap <leader>h :bp<CR>
nnoremap <leader>l :bn<CR>
nnoremap <leader>b $A<space>{<CR>}<ESC>O
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>t :TlistToggle<CR>
nnoremap <leader>f :lopen<CR>
noremap <leader>g :lclose<CR>
