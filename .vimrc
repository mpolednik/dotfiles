" Bundles
set nocompatible " Do not try to be compatible with vi
filetype off

set rtp+=~/.vim/bundle/vundle/
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
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
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'davidhalter/jedi-vim'

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
autocmd FileType php set omnifunc=phpcomplete#CompletePHP keywordprg=pman
autocmd FileType c set omnifunc=ccomplete#Complete

" PHP
let php_sql_query=1                                                                                        
let php_htmlInStrings=1
au BufRead,BufNewFile *.php set ft=php.html

" Omnicomplete prefers longest match first
set completeopt=menu,menuone,preview,longest

" PLUGINS                                                                     "
" Supertab plugin
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = '<c-x><c-o>'
let g:SuperTabClosePreviewOnPopupClose = 1

" Vimclojure plugin
let g:vimclojure#ParenRainbow = 1
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#DynamicHighlighting = 1

" NERDTree plugin
let NERDTreeQuitOnOpen = 1
let NERDTreeDirArrows = 1
let NERDTreeMinimalUI = 1

" Tagbar
let g:tagbar_autoclose = 1
let g:tagbar_compact = 1

" MAPPINGS                                                                    "
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <silent> <f1> :NERDTreeToggle<cr>
map <silent> <f2> :TagbarToggle<cr>
"vimdiff current vs git head (fugitive extension)
nnoremap <Leader>gd :Gdiff<cr> 
"switch back to current file and closes fugitive buffer
nnoremap <Leader>gD :diffoff!<cr><c-w>h:bd<cr>

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
