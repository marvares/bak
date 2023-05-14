" COMANDOS BÁSICOS PARA EDICIÓN 
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap ¿ ¿?<Esc>ha
inoremap ¡ ¡!<Esc>ha
" Type jj to exit insert mode quickly.
inoremap jj <Esc>
set textwidth=150        " Line wrap (number of cols)

" PARA HACER COPY/PASTE FUERA DE NEOVIM

nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+P
vnoremap <C-p> "+P

" PARA HACER SPELLING

let mapleader = ","
nnoremap <F1> :set spell spelllang=es_es,en_us<CR>
nnoremap <F2> :set nospell<CR>
nnoremap <leader>s: ]s
nnoremap <leader>a: [s
" highlight SpellBad cterm=underline ctermfg=Black


" PLUGINS (USANDO VIM-PLUG, HTTPS://GITHUB.COM/JUNEGUNN/VIM-PLUG)

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'MattesGroeger/vim-bookmarks' "Bookmarks persistentes y vistosos
Plug 'tpope/vim-eunuch' "Comandos de renombrar y otros similares más amigables y potentes
Plug 'vim-airline/vim-airline-themes'  " Temas para airline
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dkarter/bullets.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
call plug#end()

" SETEOS PARA AIRLINE

let g:airline_theme='molokai' "Tema celeste y azul para airline
let g:airline_section_y = ''
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
" display spelling language when spell detection is enabled (if enough space is available) >
let g:airline_detect_spelllang=1
set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)


" Símbolos para air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = '☰' 
let g:airline_symbols.dirty= '⚡'

" SETEOS PARA GOYO Y LIMELIGHT
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
nnoremap <leader><F1> :Goyo 120<CR>:Limelight<CR>
nnoremap <leader><F2> :Goyo!<CR>:Limelight!!<CR>


" ENTRAR A MODO NORMAL TRAS 'N' SEGUNDOS DE INACTIVIDAD

" automatically leave insert mode after 'updatetime' milliseconds of inaction
au CursorHoldI * stopinsert
" set 'updatetime' to 05 seconds when in insert mode
au InsertEnter * let updaterestore=&updatetime | set updatetime=5000
au InsertLeave * let &updatetime=updaterestore

" ATAJOS PARA NERDTREE
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Para que nvim no muestre los asteriscos de formato en un file md
autocmd FileType markdown set conceallevel=3
