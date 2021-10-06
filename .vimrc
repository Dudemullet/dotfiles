set nocompatible              " be iMproved, required
filetype off                  " required

" Buffet colors
" Note: Make sure the function is defined before `vim-buffet` is loaded.
function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#00FF00 guifg=#000000
endfunction

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

Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'easymotion/vim-easymotion'
Plugin 'https://github.com/tpope/vim-surround'
Plugin 'https://github.com/tomtom/tcomment_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mg979/vim-visual-multi'
Plugin 'tpope/vim-fugitive'
Plugin 'groenewege/vim-less'
Plugin 'gioele/vim-autoswap'
Plugin 'yegappan/mru'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'elzr/vim-json'
Plugin 'digitaltoad/vim-jade'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'briancollins/vim-jst'
Plugin 'mxw/vim-jsx'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'zefei/vim-colortuner'
Plugin 'tpope/vim-repeat'
Plugin 'fatih/vim-go'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'editorconfig/editorconfig-vim'
Plugin 'prettier/vim-prettier'
Plugin 'hashivim/vim-terraform'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'bagrat/vim-buffet'

call vundle#end()            " required
filetype plugin indent on

" Plugin config
let NERDTreeChDirMode=2

" Editor Config
set t_Co=256
syntax enable
set background=dark
colorscheme dracula
set number
autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
set wildmenu
set wildmode=list:full
set wildcharm=<C-z>
set visualbell
set mouse=a
set pastetoggle=<F2>
nnoremap <leader>v <F2> cmd-v <F2>

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
let g:ctrlp_working_path_mode = 'rw'

" Sort CSS command
command! SortCss :g#\({\n\)\@<=#.,/}/sort

" System  Clipboard
set clipboard=unnamed

" Search settings
set ignorecase
set smartcase " Don't ignore case if a capital letter is added
set hlsearch " highlight all search matches

" Font for Mac (Menlo) with windows fallback (Consolas)
" set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline:h14,Consolas:h14:b:cANSI
" set guifont=Source\ Code\ Pro\ Regular\ for\ Powerline:h14,Consolas:h14:b:cANSI
set guifont=Droid\ Sans\ Mono\ for\ Powerline:h14,Consolas:h14:b:cANSI

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
highlight ExtraWhitespace ctermbg=red guibg=red

" Enable airline even when only 1 buffer open
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme="simple"

" git gutter settings
highlight clear SignColumn

" Map file types with syntaxes
au BufNewFile,BufRead *.php set filetype=php
"
" Git gutter max symbols
let g:gitgutter_max_signs = 2000  " default value


" Tab buffet
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <Leader><Tab> :Bw<CR>
noremap <Leader><S-Tab> :Bw!<CR>
noremap <C-t> :tabnew split<CR>
let g:buffet_separator = '#'
let g:buffet_powerline_separators = 1
let g:buffet_show_index = 1

