set mouse=a
syntax enable
colorscheme monokai
set number
set clipboard=unnamed
set backspace=indent,eol,start

" undo ting to make persistant undos
set undodir=~/.vim/undodir
set undofile
set undolevels=10000
set undoreload=100000

" get rid of .viminfo file
set viminfo+='1000,n~/.vim/viminfo

" show status line always and pretty tings
set laststatus=2	
hi User1 ctermbg=green ctermfg=red   guibg=green guifg=red
hi User2 ctermbg=red   ctermfg=yellow guibg=red   guifg=blue
hi User3 ctermbg=blue  ctermfg=darkgreen guibg=blue  guifg=green
set statusline=
set statusline+=%1*  "switch to User1 highlight
set statusline+=\ \ \ %F\ \ \    "full filename
set statusline+=%2*  "switch to User2 highlight
set statusline+=\ \ \ %y\ \ \    "filetype
set statusline+=%3*  "switch to User3 highlight
set statusline+=\ \ \ %l\ \ \    "line number
set statusline+=%*   "switch back to statusline highlight
set statusline+=\ \ \ %P\ \ \    "percentage thru file



" filetype tings

" Fix auto-indentation for YAML files
augroup yaml_fix
    autocmd!
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
augroup END

augroup filetypedetect
    au BufRead,BufNewFile .aliases setfiletype sh
augroup END

" filetype tings
