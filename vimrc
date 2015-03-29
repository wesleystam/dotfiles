set nocompatible

" Load Plugins
if filereadable(expand("~/.vim/vim.plugin"))
  source ~/.vim/vim.plugin
endif

filetype plugin indent on
syntax enable
set encoding=utf-8

" change backup direcoty
set backupdir=~/.vim/backup
set directory=~/.vim/backup

:map <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
set number
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set clipboard=unnamedplus
set laststatus=2
set wrap
set autoindent
set history=500
set mouse=a

" search stuff
set incsearch     " do incremental searching
set hlsearch      " highlight search
set ignorecase    " case insensitive search
set smartcase

command! Q q
command! W w
command! Qa qa
command! Wa wa

:map <C-h> <C-w>h
:map <C-j> <C-w>j
:map <C-k> <C-w>k
:map <C-l> <C-w>l

" Tabs
:map <C-n> :tabe<CR>
:map <C-x> :tabp<CR>
:map <C-c> :tabn<CR>

" NerdTree
:noremap ,n :NERDTreeToggle<CR>

" Color schema
if !has('gui_running')
  set t_Co=256
endif

colorscheme molokai

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
