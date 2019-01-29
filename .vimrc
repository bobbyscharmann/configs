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

