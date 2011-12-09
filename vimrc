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


:map <C-t> :FuzzyFinderTextMate<CR>
:map <C-f> :ruby finder.rescan!<CR>
" Fuzzy finder: ignore stuff that can't be opened, and generated files
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"

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
command! W w
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
set go-=T           " Remove toolbar in MacVim
set clipboard=unnamed "yy, D and P work with the clipboard. 

"tab switching in normal mode
:map <C-n> :tabnew<CR>
:map <C-q> :tabn1<CR>
:map <C-2> :tabn2<CR>
:map <C-3> :tabn3<CR>
:map <C-4> :tabn4<CR>
:map <C-5> :tabn5<CR>
:map <C-6> :tabn6<CR>
:map <C-7> :tabn7<CR>
:map <C-8> :tabn8<CR>
:map <C-9> :tabn9<CR>

"tab switching in insert mode
map! <C-1> <C-O>:tabn1<CR>
map! <C-2> <C-O>:tabn2<CR>
map! <C-3> <C-O>:tabn3<CR>
map! <C-4> <C-O>:tabn4<CR>
map! <C-5> <C-O>:tabn5<CR>
map! <C-6> <C-O>:tabn6<CR>
map! <C-7> <C-O>:tabn7<CR>
map! <C-8> <C-O>:tabn8<CR>
map! <C-9> <C-O>:tabn9<CR>
