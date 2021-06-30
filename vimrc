syntax on
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark="medium"
set number
"habilita operaciones con el mouse
set mouse=a
set numberwidth=1
"lo que copias en vim queda en el clipboard del SO
set clipboard=unnamed
"muestra los comandos que estamos ejecutando
set showcmd
"muestra la linea en la que nos posicionamos
set ruler
set encoding=utf-8
"muestra el parentesis que cierra cuando nos posicionamos sobre el que abre
set showmatch
"muestra el desplazamiento relativo hacia arriba y hacia abajo desde donde
"esta el cursor
set relativenumber
"muestra siemrpe la barra de abajo de vim
set laststatus=2
set tabstop=4
syntax enable
filetype plugin indent on

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" TEMAS
Plug 'morhetz/gruvbox'

" COC - Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" RUST
Plug 'rust-lang/rust.vim'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

" Initialize plugin system
call plug#end()

"let NERDTreeQuitOnOpen=1

" configuro tecla lider para activar Easymotion
let mapleader=" " "tecla lider -> espacio
" cada vez que tocamos espacio+s se activa easymotion
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

" Atajos de teclado
" Guardar cambios
nmap <Leader>w :w<CR>
" Salir
nmap <Leader>q :q<CR>

