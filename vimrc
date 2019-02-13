" A basic vimrc
"	for optimal
" vim performance.. LoL
"
" Author: Mr. Bent
"""""""""""""""""""
"
"
"
"""" START Vundle Configuration 

" Disable file type for vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'

" Generic Programming Support 

" Markdown / Writting

" Git Support

" PHP Support

" Erlang Support

" Elixir Support 

" Elm Support

" Theme / Interface

" OSX stupid backspace fix
set backspace=indent,eol,start

call vundle#end()            " required
filetype plugin indent on    " required
"""" END Vundle Configuration 
"BASIC STUFF
"
"
"
"enable advanced mode
set nocompatible
syntax on
filetype plugin on
set nowrap
set encoding=utf8

" show linenumbers
set number
set relativenumber
set ruler

" proper tabs
set ts=4
set expandtab
set shiftwidth=4
" Always disply the statusline
set laststatus=2

" Auto indent
set autoindent

"enable normal mode paste
set pastetoggle=<F10>
"visual warningbell
set novisualbell
"
"disable mouse
set mouse=
noremap <LeftDrag> <LeftMouse>
noremap!<LeftDrag> <LeftMouse>

"elite mode no arrows
let g:elite_mode=1

"cursorline
set cursorline

"show matching bracers
set showmatch

"syntax highlighting
let python_highlight_all = 1

"theme & colors
set guifont=Consolas:h10

"set t_Co=256
colorscheme darkblue

"if (has("termguicolors"))
"    set termguicolors
"endif


" markdown
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END


"let g:acp_enableAtStartup=0
"let g:neocomplete#enable_at_startup=1
"let g:neocomplete#enable_smart_case=1
"let g:neocomplete#sources#syntax#min_keyword_length=3

"color column 80
"set colorcolumn=80
"
"all backup etc in same dir path
set noswapfile
set nobackup
"set backupdir=~/.vim/backup//
"set directory=~/.vim/swap//
"set undodir=~/.vim/undodir//

"enable incremental search
set incsearch
"enable search highlighting
set hlsearch

"   MAPPINGS
"

inoremap jj <ESC>

" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
	nnoremap <Up>    :resize +2<CR>
	nnoremap <Down>  :resize -2<CR>
	nnoremap <Left>  :vertical resize +2<CR>
	nnoremap <Right> :vertical resize -2<CR>
endif

"nerdtree
map <C-n> :NERDTreeToggle<CR>
