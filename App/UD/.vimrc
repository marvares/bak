filetype plugin on
syntax on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
let g:clang_c_options = '-std=gnu11'
Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'PhilRunninger/nerdtree-visual-selection'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/limelight.vim' 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'  " Temas para airline
"let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
let g:airline#extensions#tabline#formatter = 'unique_tail_improved' " f/p/file-name.js
"let g:airline_stl_path_style = 'short'
let g:airline_section_c = '%F'
let g:airline_theme='molokai'
"let g:airline_section_z = ' '
let g:airline_section_y = ''
" display spelling language when spell detection is enabled (if enough space is available) >
let g:airline_detect_spelllang=1
"let g:airline_solarized_bg='dark'
" Cargar fuente Powerline y símbolos (ver nota)
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = '☰' 
let g:airline_symbols.dirty= '⚡'
call vundle#end() " required
""filetype plugin indent on " required

let mapleader = ","


" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
"filetype indent on

" Turn syntax highlighting on.

" Add numbers to each line on the left-hand side.
set number
set relativenumber

" Highlight cursor line underneath the cursor horizontally.
"set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" Do not save backup files.
"set nobackup

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Type jj to exit insert mode quickly.
inoremap jj <Esc>

"call vundle#end() " required
filetype plugin indent on " required

" set number
" set nowrap
set smartcase
set autoindent

set linebreak   " Break lines at word (requires Wrap lines)
" set showbreak=+++     " Wrap-broken line prefix
set textwidth=90        " Line wrap (number of cols)
set autoindent   " Auto-indent new lines
set shiftwidth=4        " Number of auto-indent spaces
set smartindent " Enable smart-indent
set smarttab    " Enable smart-tabs
set softtabstop=4       " Number of spaces per Tab
" set ruler   " Show row and column ruler information
set undolevels=1000             " Number of undo levels
" set backspace=indent,eol,start  " Backspace behaviour
"set showmode
set mouse=a
set noswapfile
set undofile
set undodir=~/.vim/undodir
set history=10000
set wrap
""nnoremap <F1> :set linebreak<CR>
""nnoremap <C-F1> :set nolinebreak<CR>
nnoremap <F1> :set spell spelllang=es_es,en_us,fr<CR>
nnoremap <F2> :set nospell<CR>
nnoremap <F9> :noh<CR>
nnoremap <leader>a ]s 
nnoremap <leader>s [s 
nnoremap <leader>c z= 
nnoremap <leader>v zg  
nnoremap <leader>f zw 
nnoremap <leader>f zw 
nnoremap <leader>r gqip


nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP

set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)

autocmd FileType markdown set conceallevel=3
set spelllang=es_es,en_us,fr
"set spell
"set invlist 
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap ` ``<Esc>ha

nnoremap <C-f> :Rg!
" set 'updatetime' to 15 seconds when in insert mode
au InsertEnter * let updaterestore=&updatetime | set updatetime=4000
au InsertLeave * let &updatetime=updaterestore
au CursorHoldI * stopinsert

" Goyo settings
let g:goyo_width  = "100"
let g:goyo_height = "100%"
let g:goyo_linenr = 0

" Hacer que cada vez que se ejecute Goyo, se ejecute Limelight también
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
" let g:limelight_conceal_ctermfg
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

nnoremap <F4> :Goyo<CR>
