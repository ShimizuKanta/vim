" encode
"scriptencoding utf-8
"set encoding=utf-8

if &compatible
  set nocompatible
endif

" backup
set nobackup
set noswapfile
set autoread

" serch
set hlsearch
"nmap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
set ignorecase
set smartcase
set incsearch

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

" other settings
set history=300
set pumheight=10
set matchtime=1
set matchpairs& matchpairs+=<:>
set virtualedit=block
set gdefault
set whichwrap=b,s,h,l,<,>,[,],~

" visual setting
set title
set number
set showmatch
syntax on
set cursorline
set scrolloff=5
"set cmdheight=2
" status line setting
"set ruler
set laststatus=2
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
"function! HasPaste()
"    if &paste
"        return 'PASTE MODE  '
"    endif
"    return ''
"endfunction
set statusline=%F\ 
set statusline+=%m
set statusline+=%r
set statusline+=%h
set statusline+=%w
set statusline+=\ CWD:%r%{getcwd()}%h
set statusline+=%=
set statusline+=[Line=%l/%L]
set statusline+=[Column=%c]
set statusline+=[encode=%{&fileencoding}]


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" color setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" comment line
hi Comment ctermfg=gray
" status line
hi StatusLine ctermbg=0 ctermfg=70
" line number 
hi LineNr ctermbg=236 ctermfg=122
" FIXME
"autocmd VimEnter,ColorScheme * highlight Comment ctermfg=gray
"autocmd WinEnter,BufRead,BufNew,Syntax,ColorScheme * :silent! call matchadd('Todo', '\(TODO\|FIXME\|NOTE\|INFO\|XXX\|TEMP\):')
"autocmd VimEnter,ColorScheme * highlight Todo guibg=Yellow guifg=Black
"autocmd VimEnter,ColorScheme * highlight Normal ctermbg=NONE
"autocmd VimEnter,ColorScheme * highlight NonText ctermbg=NONE
"autocmd VimEnter,ColorScheme * highlight TablineSel ctermbg=NONE
"autocmd VimEnter,ColorScheme * highlight LineNr ctermbg=NONE
"autocmd VimEnter,ColorScheme * highlight CursorLineNr ctermbg=NONE
"colorscheme molokai
"highlight Normal,NonText,LineNr,Folded,EndOfBuffer ctermbg=none


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" key mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 's' key
nnoremap s <Nop>

" comment out 
" FIXME 
if expand("%:t") =~ ".*\.cc"
  noremap sa k$ i//<esc>
  noremap sx k$ 2x<esc>
"elseif expand("%:t") =~ ".*\.cpp"
"elseif expand("%:t") =~ ".*\.h"
"elseif expand("%:t") =~ ".*\.hpp"
else
  noremap sa k$ i#<esc>
  noremap sx k$ x<esc>
endif
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

" other keys
nnoremap Y y$
inoremap <silent> jj <ESC>
"nnoremap <BS> i<BS><esc>l
nnoremap <BS> X
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
nnoremap ZZ <Nop>

