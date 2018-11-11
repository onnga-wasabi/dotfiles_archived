"dein Scripts-----------------------------
if &compatible
  set nocompatible 	      	   " Be iMproved
endif

set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim
let g:python3_host_prog = expand('$HOME') . '/.pyenv/shims/python'
let s:dein_dir = expand('$HOME/.cache/dein')

" Required:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " Let dein manage dein
  " Required:
  let s:toml_dir = expand('$HOME/.cache/dein/plugs/')
  call dein#load_toml(s:toml_dir . 'dein.toml',		{'lazy':0})

  " Add lazy load plugins
  call dein#load_toml(s:toml_dir . 'lazy_dein.toml',	{'lazy':1})
" Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"vim-airline config=======================

"use powerline fonts
let g:airline_powerline_fonts = 1

"enable tabline
let g:airline#extensions#tabline#enabled = 1

"select the theme
let g:airline_theme = 'luna'
"let g:airline_theme = 'powerlineish'
"let g:airline_theme = 'solarized'
"let g:airline_theme = 'badwolf'

"end vim-airline config===================

syntax on
"colorscheme koehler
"colorscheme slate
set background=dark
colorscheme solarized
set nu
set virtualedit=onemore
set smartindent
set autoindent
set cursorline
set showmatch
set pumheight=10

let mapleader = "\<Space>"
let maplocalleader = "."

let g:tex_conceal=''

nnoremap j gj
nnoremap k gk
nnoremap , :bd<CR>

inoremap <C-b> <Left>
inoremap <C-f> <Right>

nnoremap s <Nop>
nnoremap ss :split<CR>gg
nnoremap sv :vsplit<CR><C-w>l
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sr <C-w>r
nnoremap sw <C-w>w
nnoremap st :tabnew<CR>
nnoremap tm :terminal<CR>:set nonumber<CR>i
nnoremap tt :TagbarToggle<CR><C-w>l
nnoremap <Leader><Leader> :NERDTree<CR>
nnoremap <Leader>p :split<CR>:terminal python %<CR>:set nonumber<CR>
nnoremap <Leader>t :Template 
nnoremap <Leader>b :b  
nnoremap sn :bp<CR>
nnoremap sp :bn<CR>

tnoremap <ESC> <C-\><C-n>
tnoremap , <C-\><C-n>
tnoremap , <C-d>

nmap [figitive] <Nop>
map <Leader>g [figitive]
nmap <silent> [figitive]s :<C-u>Gstatus<CR>
nmap <silent> [figitive]d :<C-u>Gdiff<CR>
nmap <silent> [figitive]b :<C-u>Gblame<CR>
nmap <silent> [figitive]l :<C-u>Glog<CR>

set tabstop=2
set shiftwidth=2
set expandtab

augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.tex setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.js setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

filetype plugin on
augroup setAutoCompile
    autocmd!
    autocmd BufWritePost *.tex :lcd %:h | :!latexmk %:p
    autocmd BufWritePost *.c :lcd %:h | :!gcc %:p
    autocmd BufWritePost *.cpp :lcd %:h | :!g++ %:p
augroup END

set guicursor=
" Workaround some broken plugins which set guicursor indiscriminately.
autocmd OptionSet guicursor noautocmd set guicursor=
