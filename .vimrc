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

call vundle#end()            " required
filetype plugin indent on

" Plugin config
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTree .<CR>
map <leader>c  <c-_><c-_> " Comment selection with \c

" Editor Config
syntax enable
set background=dark
colorscheme solarized
set number

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
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories

" auto remote trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

