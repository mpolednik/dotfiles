" Sources
" https://github.com/lucasoman/Conf/blob/master/.vimrc
" http://vi-improved.org/vimrc.php
" http://www.thegeekstuff.com/2009/04/ctags-taglist-vi-vim-editor-as-sourece-code-browser/
" https://github.com/gammons/dotfiles/blob/master/vimrc

" Init pathogen plugin management
call pathogen#infect() 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GENERAL                                                                      "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "_"
set clipboard=unnamed " OSX Clipboard compatibility
set nocompatible " Do not try to be compatible with vi
set encoding=utf-8
set noacd " Do not cd to directory of file
set ignorecase smartcase " Search ignores case if everything is lowercase, use case-sensitive matching otherwise
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" USER INTERFACE                                                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
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
set showtabline=2 " Always show tabline
hi StatusLine ctermfg=blue ctermbg=yellow
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OMNICOMPLETE, SYNTAX SPECIFIC                                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.php set filetype=php.html

" Omnicomplete setup
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP keywordprg=pman
autocmd FileType c set omnifunc=ccomplete#Complete

" PHP syntax options
let php_sql_query = 1 "for SQL syntax highlighting inside strings
let php_htmlInStrings = 1 "for HTML syntax highlighting inside strings


" Omnicomplete prefers longest match first
set completeopt=menu,menuone,preview,longest
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS                                                                      "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree plugin
let NERDTreeChDirMode=1
let NERDTreeQuitOnOpen=1
let NERDTreeShowLineNumbers=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowHidden=1

" Supertab plugin
let g:SuperTabDefaultCompletionType = "<c-p>"

let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki'}]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPINGS                                                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F1> :NERDTreeToggle<cr>
map K <Nop>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC                                                                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Close scratch window
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
