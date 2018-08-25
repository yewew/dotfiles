" Basic Settings ---------- {{{

syntax on

set number
set title
set showmatch
set showmode
set ruler
set expandtab
set tabstop=4
set smartindent
set shiftwidth=4
set shiftround
set display=lastline
set pumheight=10
set ignorecase
set smartcase
set wrapscan
set history=200
set matchtime=1
set hidden
set backspace=0
set pastetoggle=<f5>
set hlsearch
set incsearch
set noswapfile

let mapleader="-"
let maplocalleader="\\"

set nocompatible              " be iMproved, require
filetype plugin indent on

runtime macros/matchit.vim

" }}}
" Javascript file settings ---------- {{{
augroup filetype_javascript
    autocmd!
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType javascript inoremap <buffer> <localleader>log console.log();<esc>hi
    autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
augroup END
" }}}
" Vimscript file settings ---------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
" Mappings ---------- {{{
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
vnoremap <leader>" <esc>a"<esc>v`<<esc>i"<esc>lel
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
inoremap jk <c-[>
nnoremap H ^
nnoremap L $
nnoremap <silent> ]w <c-w><c-w>
nnoremap <silent> [b :bprevious<cr>
nnoremap <silent> ]b :bnext<cr>
nnoremap <silent> [B :bfirst<cr>
nnoremap <silent> ]B :blast<cr>
nnoremap <silent> [a :prev<cr>
nnoremap <silent> ]a :next<cr>
nnoremap <silent> [A :first<cr>
nnoremap <silent> ]A :last<cr>
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
" }}}
" Status Line  ---------- {{{
set laststatus=2
set statusline=%f\ -\ FileType:\ %y
set statusline+=%=%l/%L
" }}}
" Ruby file settings --------------------- {{{
if has("autocmd")
    autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
endif
" }}}
" Html file settings --------------------- {{{
if has("autocmd")
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
endif
" }}}

