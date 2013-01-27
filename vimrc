" Bundles
set nocompatible " Do not try to be compatible with vi
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'ervandew/supertab'
Bundle 'gregsexton/MatchTag'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'tpope/vim-fugitive'
Bundle 'sjl/gundo.vim.git'
Bundle 'sontek/minibufexpl.vim'
Bundle 'andrewle/vim-autoclose'
Bundle 'vim-scripts/pydoc.vim'
Bundle 'scrooloose/syntastic'
Bundle 'endel/vim-github-colorscheme'
Bundle 'vim-scripts/CSApprox'
Bundle 'skammer/vim-css-color'

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
set gdefault " Assume /g when doing :%s

" UI
syntax on
colorscheme github
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
autocmd FileType php set omnifunc=phpcomplete#CompletePHP keywordprg=pman
autocmd FileType c set omnifunc=ccomplete#Complete

" Omnicomplete prefers longest match first
set completeopt=menu,menuone,preview,longest

" PLUGINS                                                                     "
" Supertab plugin
let g:SuperTabDefaultCompletionType = "context"

" MAPPINGS                                                                    "
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <F1> :GundoToggle<cr>

if has("gui_running")
    set guifont=Menlo:h15
else
    colorscheme github-term
endif
