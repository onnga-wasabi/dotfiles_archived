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

"autopep8 config==========================
function! Preserve(command)
    " Save the last search.
    let search = @/
    " Save the current cursor position.
    let cursor_position = getpos('.')
    " Save the current window position.
    normal! H
    let window_position = getpos('.')
    call setpos('.', cursor_position)
    " Execute the command.
    execute a:command
    " Restore the last search.
    let @/ = search
    " Restore the previous window position.
    call setpos('.', window_position)
    normal! zt
    " Restore the previous cursor position.
    call setpos('.', cursor_position)
endfunction

function! Autopep8()
    call Preserve(':silent %!autopep8 -')
endfunction

autocmd FileType python nnoremap <S-f> :call Autopep8()<CR>
"end autopep8 config======================

syntax on
colorscheme koehler
set nu
set virtualedit=onemore
set smartindent
set autoindent
set cursorline
set showmatch
set pumheight=10
nnoremap j gj
nnoremap k gk
inoremap <silent> jj <ESC>l
nnoremap , :q<CR>

nnoremap s <Nop>
nnoremap ss :split<CR>gg
nnoremap sv :vsplit<CR>sl
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sw <C-w>w
nnoremap st :tabnew<CR>
nnoremap sn gt
nnoremap sp gT
nnoremap tm :terminal<CR>:set nonumber<CR>i
tnoremap <ESC> <C-\><C-n>

nnoremap ttsh :TagbarToggle<CR>
