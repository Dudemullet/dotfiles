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
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
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
Plugin 'mattn/emmet-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'briancollins/vim-jst'
Plugin 'mxw/vim-jsx'
Plugin 'justinj/vim-react-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'joonty/vdebug'
Plugin 'StanAngeloff/php.vim'

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

" JSX config
let g:jsx_ext_required = 0

" indent guides
set ts=2 sw=2 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Mappings
" nnoremap <leader>] :colorscheme <C-z><S-Tab>
nnoremap <leader>n :NERDTree .<CR>
map <leader>c  <c-_><c-_> " Comment selection with \c
nnoremap <leader>[ :GitGutterPrevHunk <CR>
nnoremap <leader>] :GitGutterNextHunk <CR>
nnoremap <leader>p :CtrlP <CR>
nnoremap <leader>; :MRU <CR>

" New line on control-C
imap <C-c> <CR><Esc>O

" CtrlP config
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\vnode_modules$'

" Sort CSS command
command! SortCss :g#\({\n\)\@<=#.,/}/sort

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
set foldlevel=1

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
au BufNewFile,BufRead *.php set filetype=php
