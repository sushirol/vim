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

set number

"  statuslines
set laststatus=2

map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

" .md file
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" When you create a new file, it’s not indexed by default. Here a way to
" reindex everything by simply pressing <Leader>+r:
noremap <Leader>t :FZF<CR>

"set statusline=%t
set rtp+=~/.fzf

" Tmuxline configuration
" Command :Tmuxline 
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}

" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif
