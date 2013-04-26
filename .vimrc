" Bundles
set nocompatible " Do not try to be compatible with vi
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'gregsexton/MatchTag'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'scrooloose/syntastic'
Bundle 'noahfrederick/Hemisu'
Bundle 'vim-scripts/VimClojure'
Bundle 'SirVer/ultisnips'
Bundle 'vim-scripts/loremipsum'
Bundle 'ervandew/supertab'

" General
let mapleader = "_"
set clipboard=unnamed " OSX Clipboard compatibility
set ignorecase smartcase " Search ignores case if everything is 
" lowercase, use  case-sensitive matching otherwise
set expandtab " Only visual tabs
set shiftwidth=4
set softtabstop=4
set shiftround
set ttyfast
set wildmenu
set wildmode=list:longest
set nofoldenable
set backspace=indent,eol,start " Upgraded backspace

" UI
syntax on
colorscheme hemisu
set background=dark
set colorcolumn=79
filetype plugin indent on " Filetype indentation 
set nostartofline " Persistant cursor position
set laststatus=2 " Always display status line
set incsearch " search as you type
set hlsearch " Highlight search
set showmode " Show current mode
set showcmd " Number of lines in visual selection
set number " Line numbers
set nowrap " No wrapped lines
set statusline=%F%m%r%h%w\ [%L]\ [%p%%]\ [%l,%v]
set showmatch " Jump to matching bracket
set matchtime=2 " stay for 2 seconds
set showtabline=1 " Always show tabline
set cursorline

" OMNICOMPLETE, SYNTAX SPECIFIC                                               "
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

let g:vimclojure#ParenRainbow = 1
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#DynamicHighlighting = 1

" Omnicomplete prefers longest match first
set completeopt=menu,menuone,preview,longest

" PLUGINS                                                                     "
" Supertab plugin
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = '<c-x><c-o>'
let g:SuperTabClosePreviewOnPopupClose = 1

" MAPPINGS                                                                    "
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h