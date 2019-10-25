"" Bundles
set nocompatible " Do not try to be compatible with vi
"
call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'https://github.com/fatih/vim-go'
Plug 'tpope/vim-fugitive'
"Plug 'techlivezheng/vim-plugin-minibufexpl'
Plug 'ap/vim-buftabline'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.local/nvim/plugged/gocode/vim/symlink.sh' }
Plug 'zchee/deoplete-go'
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'mpolednik/klean'
Plug 'scrooloose/nerdtree'
Plug 'python-mode/python-mode', {'branch': 'develop'}
Plug 'Vimjas/vim-python-pep8-indent'
"
call plug#end()
"
" General
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
set statusline+=%*
set showmatch " Jump to matching bracket
set matchtime=2 " stay for 2 seconds
set showtabline=1 " Always show tabline
set cursorline
set foldmethod=syntax
set maxmempattern=50000

set tags=./tags,tags;$HOME

" Omnicomplete prefers longest match first
set completeopt=longest,menu,menuone,preview

" PLUGINS                                                                     "
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_autodetect_gopath = 0

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

let g:jedi#completions_enabled = 0

let g:buftabline_numbers = 1
let g:buftabline_show = 2

let mapleader = "\\"

" MAPPINGS                                                                    "
nnoremap <C-p> :FZF<CR>

map <C-j> :bnext<CR>
map <C-k> :bprev<CR>

map <F1> :NERDTreeToggle<CR>

autocmd FileType gitcommit setlocal cc=70
autocmd FileType gitcommit setlocal tw=70
autocmd FileType mail setlocal cc=76
autocmd FileType mail setlocal tw=76

set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/

let g:ruby_host_prog = '/usr/local/opt/ruby/bin/ruby'
let g:python2_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:pymode_python = 'python3' 

" (Optional)Hide Info(Preview) window after completions
autocmd CursorMovedI * if pumvisible() == 0 | pclose | endif
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif
autocmd TermOpen * set bufhidden=hide

let g:centerinscreen_active = 0

function! ToggleCenterInScreen(desired_width)
    if g:centerinscreen_active == 0
        let l:window_width = winwidth(winnr())
        let l:sidepanel_width = (l:window_width - a:desired_width) / 2

        exec("silent leftabove " . l:sidepanel_width . "vsplit -")
        wincmd l
        exec("silent rightbelow " . l:sidepanel_width . "vsplit -")
        wincmd h
        let g:centerinscreen_active = 1
    else
        wincmd h
        close
        wincmd l
        close
        
        let g:centerinscreen_active = 0
    endif
endfunction

nnoremap <C-l> :exec ToggleCenterInScreen(100)<CR>
