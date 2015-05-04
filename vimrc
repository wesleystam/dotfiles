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

:map <leader>v :set list!<CR>
set listchars=tab:▸\ ,eol:¬
set number
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set clipboard=unnamed
set laststatus=2
set wrap
set autoindent
set history=500
set mouse=a
set backspace=indent,eol,start

" search stuff
set wildignore+=*/node_modules/* " ignore node_modules
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
:nmap <C-n> :tabe<CR>
:nmap <C-x> :tabp<CR>
:nmap <C-c> :tabn<CR>

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

" vim-spec mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

