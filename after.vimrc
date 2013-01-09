" nginx syntax
Bundle 'evanmiller/nginx-vim-syntax'

" Map arrow keys to move arround the document
map <Right> l
map <Left> h
map <Down> j
map <Up> k

" Enable mouse
set mouse=a

" Colorschema
set t_Co=16
set background=dark

" Line numbering
set relativenumber!
set numberwidth=5

" Folding
set foldlevelstart=-1
set foldmethod=manual
set foldignore=#

" Cursorline
augroup cline
  au!
  au WinLeave * set nocursorline
  au WinEnter * set nocursorline
  au InsertLeave * set nocursorline
  au InsertEnter * set nocursorline
augroup END