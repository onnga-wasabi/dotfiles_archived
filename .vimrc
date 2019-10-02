"dein Scripts-----------------------------
if &compatible
  set nocompatible 	      	   " Be iMproved
endif

set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim
" let g:python3_host_prog = expand('$HOME') . '/.pyenv/shims/python'
let g:python3_host_prog = expand('$HOME') . '/.pyenv/versions/neovim/bin/python'

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
"let g:airline_theme = 'luna'
"let g:airline_theme = 'powerlineish'
"let g:airline_theme = 'solarized light'
"let g:airline_theme = 'sol'
let g:airline_theme = 'deus'

"end vim-airline config===================

syntax on
set background=dark
colorscheme solarized8_dark

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

inoremap <C-c> <ESC>
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
nnoremap <Leader>p :split<CR>:terminal python %<CR>:set nonumber<CR>
nnoremap <Leader>t :Template 
nnoremap <Leader>b :b  
nnoremap sn :bp<CR>
nnoremap sp :bn<CR>

" Defx
nnoremap <Leader><Leader> :Defx<CR>

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

"filetype plugin on
"augroup setAutoCompile
"    autocmd!
"    autocmd BufWritePost *.c :lcd %:h | :!gcc %:p
"    autocmd BufWritePost *.cpp :lcd %:h | :!g++ %:p
"augroup END

set guicursor=
" Workaround some broken plugins which set guicursor indiscriminately.
autocmd OptionSet guicursor noautocmd set guicursor=

" input method
let s:JapaneseIM = 'com.google.inputmethod.Japanese.base'
let s:AsciiIM = 'com.apple.keylayout.US'

function! s:ImActivateFunc(active)
  if a:active
    call system('swim use ' . s:JapaneseIM)
  else
    call system('swim use ' . s:AsciiIM)
  endif
endfunction

function! s:ImStatusFunc()
  return system('swim list --current') is# s:JapaneseIM . "\n"
endfunction

let s:ImStatus = 0

function! s:insertEnter()
  call s:ImActivateFunc(s:ImStatus)
  call s:ImStatusFunc()
endfunction
"
function! s:insertLeave()
  let s:ImStatus = s:ImStatusFunc()
  call s:ImActivateFunc(0)
  call s:ImStatusFunc()
endfunction

augroup ime
  autocmd!
  autocmd InsertEnter * call s:insertEnter()
  autocmd InsertLeave * call s:insertLeave()
augroup END
" autocmd InsertLeave * w
set nowrap

" Prefix key nnoremap [denite] <Nop>
nmap <C-j> [denite]
" Keymap
" Current direcotry files
nnoremap <silent> [denite]<C-p> :<C-u>Denite file/rec<CR>
" Buffer files
nnoremap <silent> [denite]<C-b> :<C-u>Denite buffer<CR>
" Grep files
nnoremap <silent> [denite]<C-g> :<C-u>Denite -auto_preview grep<CR>
" Outline
nnoremap <silent> [denite]<C-o> :<C-u>Denite outline<CR>
" Command history
nnoremap <silent> [denite]<C-n> :<C-u>Denite command_history<CR>
" Seach dotfiles
nnoremap <silent> [denite]<C-d> :<C-u>call denite#start([{'name': 'file/rec', 'args': ['~/dotfiles']}])<CR>
" Seach dotfiles
nnoremap <silent> [denite]<C-w> :<C-u>call denite#start([{'name': 'file/rec', 'args': ['~/workspace']}])<CR>
" 上下移動を<C-N>, <C-P>
call denite#custom#map('normal', '<C-N>', '<denite:move_to_next_line>')
call denite#custom#map('normal', '<C-P>', '<denite:move_to_previous_line>')
call denite#custom#map('insert', '<C-N>', '<denite:move_to_next_line>')
call denite#custom#map('insert', '<C-P>', '<denite:move_to_previous_line>')
" 入力履歴移動を<C-J>, <C-K>
call denite#custom#map('insert', '<C-J>', '<denite:assign_next_text>')
call denite#custom#map('insert', '<C-K>', '<denite:assign_previous_text>')
" 縦割りオープンを`<C-o>`
call denite#custom#map('insert', '<C-o>', '<denite:do_action:vsplit>')
call denite#custom#option('default', 'prompt', '>')
call denite#custom#source('file/rec', 'matchers', ['matcher_fuzzy','matcher_ignore_globs'])
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
    \ [
    \ '.git/', '.ropeproject/', '__pycache__/',
    \ 'venv/', 'images/', '*.min.*', 'img/', 'fonts/',
    \ '*.png', '*.npz', '*.bbl', '*.pdf', '*.toc', '*.gz',
    \ '*.dvi', '*.aux', '*.log', '*.fls', '*.docx', '*.fdb_latexmk',
    \ '*.blg', '*.eps'
    \ ])
if executable('rg')
  call denite#custom#var('file/rec', 'command',
        \ ['rg', '--files', '--glob', '!.git'])
  call denite#custom#var('grep', 'command', ['rg'])
endif

autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  " filtering ウィンドウを開く
  nnoremap <silent><buffer><expr> i denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> q denite#do_map('quit')
  nnoremap <silent><buffer><expr> <CR> denite#do_map('do_action')
  nnoremap <silent><buffer><expr> p denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> <Space> denite#do_map('toggle_select').'j'
endfunction

let s:denite_win_width_percent = 0.85
let s:denite_win_height_percent = 0.7

" Change denite default options
call denite#custom#option('default', {
    \ 'split': 'floating',
    \ })

" Coc-vim
set signcolumn=yes
inoremap <silent><expr> <c-k> coc#refresh()

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

set termguicolors    " ターミナルでも True Color を使えるようにする。
set pumblend=30 

augroup transparent-windows
  autocmd!
  autocmd FileType denite set winblend=30  " こちらも 5 〜 30 で試してみてください。
  autocmd FileType denite-filter set winblend=30
augroup END

nmap se :e ++enc=sjis<CR>
nmap su :e ++enc=utf-8<CR>

" oritatami
nmap zs :mkview<CR>
nmap zl :loadview<CR>
