execute pathogen#infect()

filetype on
syntax on

let mapleader=" "
map <leader>s :source ~/.vimrc<CR>

set hidden
set history=1000

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set hlsearch

map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

" When you create a new file, it’s not indexed by default. Here a way to
" reindex everything by simply pressing <Leader>+r:
noremap <Leader>r :CommandTFlush<CR>
