" Initialize pathogen
call pathogen#infect()

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" search stuff
set incsearch     " do incremental searching
set hlsearch      " highlight search
set ignorecase    " case insensitive search
set smartcase

" NerdTree
:noremap ,n :NERDTreeToggle<CR>

syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins

" Colors
colorscheme bespin
if !has('gui_running')
	set t_Co=256
endif

command! Q q
command! Qa qa
command! W w
command! Wa wa
" easier window navigation
:map <C-h> <C-w>h
:map <C-j> <C-w>j
:map <C-k> <C-w>k
:map <C-l> <C-w>l

:map <D-enter> :set fullscreen! <CR>
:map <leader>l :set list!<CR>

set listchars=tab:▸\ ,eol:¬
set number          " Show line numbers
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set mouse=a
set history=500
set wrap
set autoindent
set linespace=2
set go-=T             " Remove toolbar in MacVim
set clipboard=unnamed " yy, D and P work with the clipboard. 
set laststatus=2      " Always show status line

" Tabs
:map <C-n> :tabe<CR>
:map <C-x> :tabp<CR>
:map <C-c> :tabn<CR>
