set nocompatible              " be iMproved, required
filetype off                  " required

" Plugin setup
if has('win32') || has('win64')
  set rtp+=~/vimfiles/bundle/Vundle.vim
  call vundle#begin()
else
  " Usual quickstart instructions
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
endif

Plugin 'gmarik/Vundle.vim'

" Example git
" Plugin 'git://git.wincent.com/command-t.git'

Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'flazz/vim-colorschemes'
Plugin 'https://github.com/altercation/vim-colors-solarized.git'
Plugin 'https://github.com/Lokaltog/vim-easymotion'
Plugin 'https://github.com/tpope/vim-surround'
Plugin 'https://github.com/tomtom/tcomment_vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'https://github.com/terryma/vim-multiple-cursors.git'
Plugin 'tpope/vim-fugitive'
Plugin 'groenewege/vim-less'
Plugin 'gioele/vim-autoswap'
Plugin 'yegappan/mru'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'elzr/vim-json'
Plugin 'digitaltoad/vim-jade'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'

call vundle#end()            " required
filetype plugin indent on

" Plugin config
let NERDTreeChDirMode=2

" Editor Config
set t_Co=256
syntax enable
set background=dark
colorscheme getafe
set number
set autochdir
set wildmenu
set wildmode=list:full
set wildcharm=<C-z>
set visualbell

" Mappings
" nnoremap <leader>] :colorscheme <C-z><S-Tab>
nnoremap <leader>n :NERDTree .<CR>
map <leader>c  <c-_><c-_> " Comment selection with \c
nnoremap <leader>[ :GitGutterPrevHunk <CR>
nnoremap <leader>] :GitGutterNextHunk <CR>


" System  Clipboard
set clipboard=unnamed

" Search settings
set ignorecase
set smartcase " Don't ignore case if a capital letter is added
set hlsearch " highlight all search matches

" Font for Mac (Menlo) with windows fallback (Consolas)
set guifont=Menlo\ Regular\ for\ Powerline:h14,Consolas:h14:b:cANSI

" Indentation
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" Normalize Backspace key
set backspace=2
set backspace=indent,eol,start

" folding
set foldmethod=indent

" undo
set undodir=$HOME/.vim/undo " where to save undo histories
set undofile                " Save undo's after file closes
set undolevels=1000
set undoreload=10000

" auto remote trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Enable airline even when only 1 buffer open
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = "solarized"

" git gutter settings
highlight clear SignColumn
