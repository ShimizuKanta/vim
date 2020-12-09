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

" save undo list
if has("persistent_undo")
  set undodir=~/.vim/.undodir
  set undofile
endif

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

" filer netrw.vim
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_alto = 1
let g:netrw_winsize = 80

" other settings
set history=300
set pumheight=10
set matchtime=1
set matchpairs& matchpairs+=<:>
set virtualedit=block
set gdefault
set whichwrap=b,s,h,l,<,>,[,],~
"set tags=./.tags;$HOME
set tags=./tags;$HOME
" for Mac
set vb t_vb=

" visual setting
set title
set number
set showmatch
syntax on
set cursorline
set scrolloff=5
"set nowrap
set splitbelow
set splitright
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
"set statusline+=\ CWD:%r%{getcwd()}%h
set statusline+=%=
set statusline+=[Line=%l/%L]
set statusline+=[Column=%c]
set statusline+=[encode=%{&fileencoding}]

" remove Thanks for flying Vim
set notitle

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" color setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" comment line
hi Comment ctermfg=gray
" status line
hi StatusLine ctermbg=0 ctermfg=71
hi StatusLineNC ctermbg=0 ctermfg=gray
" line number 
hi LineNr ctermbg=236 ctermfg=122
hi CursorLineNr ctermbg=71 ctermfg=0
" tab line (current, other, margin)
hi TabLineSel ctermbg=28 ctermfg=255
hi TabLine ctermbg=0 ctermfg=70
hi TabLineFill ctermfg=0
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
" if opening readonly file, change color to notice.
"function CheckReadonly()
"  if &readonly
"    colorscheme molokai
"  endif
"endfunction
"au BufReadPost * CheckReadonly()

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
noremap s# k$ i#=================================================<CR><esc>
" switch window
nnoremap sw <C-w>w
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap s<Down> <C-w>j
nnoremap s<Up> <C-w>k
nnoremap s<Right> <C-w>l
nnoremap s<Left> <C-w>h
nnoremap s> 10<C-w>>
nnoremap s< 10<C-w><
nnoremap s+ 10<C-w>+
nnoremap s- 10<C-w>-
" for netrw
function! NetrwMapping_sh(islocal) abort
  return "normal! \<C-w>h"
endfunction
function! NetrwMapping_sj(islocal) abort
  return "normal! \<C-w>j"
endfunction
function! NetrwMapping_sk(islocal) abort
  return "normal! \<C-w>k"
endfunction
function! NetrwMapping_sl(islocal) abort
  return "normal! \<C-w>l"
endfunction
let g:Netrw_UserMaps = [
    \   ['sh', 'NetrwMapping_sh'],
    \   ['sj', 'NetrwMapping_sj'],
    \   ['sk', 'NetrwMapping_sk'],
    \   ['sl', 'NetrwMapping_sl'],
    \ ]
" tab
nnoremap sn :<C-u>tabe .<CR>
" for ctags
"nnoremap <C-j> <C-]>
nnoremap st :vs<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap sT :sp<CR> :exe("tjump ".expand('<cword>'))<CR>

" deactive obs key
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>

" other keys
nnoremap Y y$
inoremap <silent> jj <ESC>
nnoremap <CR> A<CR><ESC>
"nnoremap <BS> i<BS><esc>l
nnoremap <BS> X
"inoremap <S-BS> <C-w> TODO 
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
" highlight a word under the cursor
"nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>
nnoremap <silent> <Space><Space> *N
" without yank
"nnoremap x "_x
"nnoremap s "_s

" move cursor
noremap <S-h>   ^
noremap <S-j>   }
noremap <S-k>   {
noremap <S-l>   $

