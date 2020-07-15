set mouse=a
syntax enable
colorscheme monokai
set number
set clipboard^=unnamed,unnamedplus
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

set shm=  " no short messages?
set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Vim-plug tings
call plug#begin()
Plug 'preservim/nerdtree'
call plug#end()


" " NERDTREE " "

" INFO - Use Control H and L to switch between windows of nerd tree

" How can I open a NERDTree automatically when vim starts up?
autocmd vimenter * NERDTree

" How can I close vim if the only window left open is a NERDTree?
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" How can I close NERDTree window after opening a file in it
" autocmd BufEnter NERD_tree_* nmap  d<CR> <CR> :NERDTreeToggle <CR>
" autocmd BufLeave NERD_tree_* unmap d<CR>

" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

" Make vim switch from tree to editor if file is passed
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 | NERDTree | wincmd p | endif

" How can I open NERDTree automatically when vim starts up on opening a directory?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" To show dot files (also call hidden files
let NERDTreeShowHidden=1

"Switch between different windows by their direction`
no <C-j> <C-w>j| "switching to below window 
no <C-k> <C-w>k| "switching to above window
no <C-l> <C-w>l| "switching to right window 
no <C-h> <C-w>h| "switching to left window

" filetype and indent tings
filetype indent on

" https://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim#:~:text=The%20shiftwidth%20parameter%20controls%20your,Use%20%3Aset%20expandtab%20.
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" backspace deletes 4 spaces back if it was a tab uno
set softtabstop=4

" Fix auto-indentation for YAML files
augroup yaml_fix
    autocmd!
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
augroup END

augroup filetypedetect
    au BufRead,BufNewFile .aliases setfiletype sh
augroup END
augroup filetypedetect
    au BufRead,BufNewFile spaceship-prompt setfiletype sh
augroup END
