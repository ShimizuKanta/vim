"scriptencoding utf-8
"set encoding=utf-8

" backup
set nobackup
set noswapfile
set autoread

" visual setting
"set number
set showmatch
syntax on
set cursorline
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" serch
set ignorecase

" optional (Not important)
set pumheight=10
set matchtime=1
set history=100

" tab & indent
set smartindent
" tab size
set tabstop=4
" replace tab to space
set expandtab 
set shiftwidth=4
set softtabstop=4
" vizualize tab
hi SpecialKey ctermfg=darkmagenta
set list listchars=tab:\|- 
"set list listchars=tab:\|\  
"set list!

"""""""""""""""""""""""""""""""""""
" key map
"""""""""""""""""""""""""""""""""""
" 's' key
nnoremap s <Nop>
" comment out 
"noremap <S-s> k$ i//<esc>
"noremap s k$ 2x<esc>
noremap sa k$ i//<esc>
noremap sx k$ 2x<esc>
" switch window
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap s<Down> <C-w>j
nnoremap s<Up> <C-w>k
nnoremap s<Right> <C-w>l
nnoremap s<Left> <C-w>h
nnoremap s> <C-w>>
nnoremap s< <C-w><
nnoremap s+ <C-w>+
nnoremap s- <C-w>-
" tab
nnoremap st :<C-u>tabe .<CR>

nnoremap Y y$


