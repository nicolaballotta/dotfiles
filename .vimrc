"Global encoding setup
set encoding=utf-8
set fileencoding=utf-8

" Enable 24 bit colors (needs supported terminal)
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

filetype off

" Enable syntax highlight
syntax on

set background=dark
set nocompatible

" Make backspace work properly
set backspace=2

" Turn off backups
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287

" Set history size
set history=50

" Enable line numbers
set number

" Enable mouse in all modes
set mouse=a

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Ennable builtin command autocomplete
set wildmode=longest,list,full

"Always show current position
set ruler

" Add a bit extra margin to the left
set foldcolumn=1

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

" Wrap and indentation
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Set defaults
Plugin 'tpope/vim-sensible'

" Vim-one color scheme
Plugin 'rakr/vim-one'

Plugin 'bluz71/vim-nightfly-guicolors'
let g:nightflyCursorColor = 1

" vim-airline for a nice status bar
Plugin 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)      
let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right                                                           
let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline                                                 
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline                                  
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline               
let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers                                                              
let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline

" Nerdtree and related configs
Plugin 'preservim/nerdtree'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
nmap <F6> :NERDTreeToggle<CR>

" Git plugins
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Insert or delete brackets, parens, quotes in pair
Plugin 'jiangmiao/auto-pairs'

" Display the indention levels with thin vertical lines
Plugin 'Yggdroot/indentLine'
let g:indentLine_char = '┊'

Plugin 'terryma/vim-multiple-cursors'

call vundle#end()
filetype plugin indent on
silent! colorscheme nightfly

" Enable cursor line
set cursorline

"Hide ~ for blank lines
hi NonText guifg=bg
