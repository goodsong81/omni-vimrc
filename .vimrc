"============ Songki Choi's vim setting ============
"- Last edit: Nov 27th, 2013
"

"-----<Vundle>
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
Bundle 'taglist.vim'
Bundle 'The-NERD-tree'
Bundle 'fugitive.vim'
Bundle 'vimwiki'
Bundle 'clang-complete'

"-----<General>
set nocompatible
filetype on
filetype plugin on
filetype indent on
set autoread
set nobackup
set nowb
set noswapfile
set encoding=utf-8
set fileencoding=utf-8
set fileformats=unix,dos,mac

"-----<UI>
syntax on
colorscheme desert
set background=dark
set number
set nowrap
set scrolloff=5
set sidescrolloff=5
set ruler "always show current position
set wildmenu
set wildmode=longest:full
set wildignore=*.o,*~
set showcmd
set cmdheight=2
set nowrapscan
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
set matchtime=2
set matchpairs+=<:>
set magic
set laststatus=2
set nows "no wrap search
set lazyredraw
set vb t_vb= "sound off
let Tlist_Auto_Open=1
let Tlist_Exit_OnlyWindow=1
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
let NERDTreeWinPos="right"

let g:molokai_original = 1

"-----<Edit>
"set t_kb=^?
fixdel
set backspace=2
set whichwrap+=<,>,h,l
set expandtab
set smarttab
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set tagbsearch
set hidden

"-----<Key Maps>
let mapleader=","
let g:mapleader=","
nmap <leader>w :w!<cr>
nmap <leader>nt :NERDTree<cr>
nmap <leader>tl :TlistToggle<cr>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

au BufReadPost *                                                                                                                                                            
      \ if line("'\"") > 0 && line("'\"") <= line("$") |                                                                                                                    
      \ exe "norm g`\"" |                                                                                                                                                   
      \ endif

