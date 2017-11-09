" Bundles
set nocompatible " Do not try to be compatible with vi

call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'https://github.com/fatih/vim-go'
Plug 'tpope/vim-fugitive'
Plug 'techlivezheng/vim-plugin-minibufexpl'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.local/nvim/plugged/gocode/vim/symlink.sh' }
Plug 'zchee/deoplete-go'
Plug 'zchee/deoplete-jedi'
Plug 'mpolednik/klean'
Plug 'scrooloose/nerdtree'
call plug#end()

" General
let mapleader = "_"
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
set clipboard=unnamedplus

syntax on
colorscheme klean
set background=dark
set colorcolumn=80
filetype plugin indent on " Filetype indentation
set nostartofline " Persistant cursor position
set laststatus=2 " Always display status line
set incsearch " search as you type
set hlsearch " Highlight search
set showmode " Show current mode
set showcmd " Number of lines in visual selection
set number
set relativenumber " Line numbers
set nowrap " No wrapped lines
set statusline=%F%m%r%h%w\ [%L]\ [%p%%]\ [%l,%v]
set statusline+=%{fugitive#statusline()}
set showmatch " Jump to matching bracket
set matchtime=2 " stay for 2 seconds
set showtabline=1 " Always show tabline
set cursorline
set foldmethod=syntax

" set spell spelllang=en_us

" OMNICOMPLETE, SYNTAX SPECIFIC                                               "
autocmd FileType python set omnifunc=pythoncomplete#CompletePython
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP keywordprg=pman
autocmd FileType c set omnifunc=ccomplete#Complete

set tags=./tags,tags;$HOME

" Omnicomplete prefers longest match first
set completeopt=longest,menu,menuone,preview

" PLUGINS                                                                     "
let g:go_highlight_functions = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

let g:deoplete#enable_at_startup = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinSize = 60
nmap <F1> :NERDTreeToggle<CR>


let mapleader = "\\"

" MAPPINGS                                                                    "
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : deoplete#mappings#manual_complete()
nnoremap <C-p> :FZF<CR>
nmap <F2> :GoCallers<CR>
nmap <F3> :GoImplements<CR>

autocmd FileType gitcommit setlocal cc=70
autocmd FileType gitcommit setlocal tw=70
autocmd FileType mail setlocal cc=76
autocmd FileType mail setlocal tw=76

set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

autocmd InsertLeave * if pumvisible() == 0 | pclose | endif
