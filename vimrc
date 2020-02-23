set autoread
set hlsearch
set showcmd 
set tabstop=4
set shiftwidth=2
set cindent
set backspace=2
set cinoptions+=:0
syntax enable
set number
set noswapfile
set showmatch
set nobackup
set nocompatible 
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set t_Co=256
colorscheme solarized
set mouse=
set encoding=utf-8
set wildmenu
set history=50
set ttimeoutlen=10
set ambiwidth=double

call plug#begin()
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'tpope/vim-fugitive'
	Plug 'alvan/vim-closetag'
	Plug 'sheerun/vim-polyglot'
	Plug 'davidhalter/jedi-vim'
call plug#end()

let g:airline_theme = 'wombat'
