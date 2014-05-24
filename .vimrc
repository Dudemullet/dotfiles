set nocompatible              " be iMproved, required
filetype off                  " required

" Plugin setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Example git
" Plugin 'git://git.wincent.com/command-t.git'

Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/altercation/vim-colors-solarized.git'
Plugin 'https://github.com/Lokaltog/vim-easymotion'
Plugin 'https://github.com/tpope/vim-surround'
Plugin 'https://github.com/tomtom/tcomment_vim'
Plugin 'https://github.com/wincent/Command-T.git'

call vundle#end()            " required
filetype plugin indent on

" Editor Config
syntax enable
set background=dark
colorscheme solarized
set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTree .<CR>
map <leader>c  <c-_><c-_>
set guifont=Menlo\ Regular\ for\ Powerline:h14 
set number

" Indentation
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
