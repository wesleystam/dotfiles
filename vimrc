set nocompatible

" Load Plugins
if filereadable(expand("~/.vim/plugin.vim"))
  source ~/.vim/plugin.vim
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
set scrolloff=5

" search stuff
set wildignore+=*/node_modules/*,*/log/*,*/public/**/*,*/tmp/* " ignore node_modules
set incsearch     " do incremental searching
set hlsearch      " highlight search
set ignorecase    " case insensitive search
set smartcase
:nmap <C-p> :Files<CR>

command! Q q
command! W w
command! Qa qa
command! Wa wa
command! WA wa

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

autocmd BufWritePre *.jsx,*.ejs,*.coffee,*.rb,*.erb,*.haml,*.slim,*.sass,*.scss,*.js,*.hamlc,*.yml :%s/\s\+$//e
au BufRead,BufNewFile *.es6 set filetype=javascript
autocmd BufNewFile,BufRead *.pdf.erb let b:eruby_subtype='html'
autocmd BufNewFile,BufRead *.pdf.erb set filetype=eruby

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*\ %t\ [%l:%L\ %c]

let g:syntastic_html_checkers = [] " Don't check html files
let g:syntastic_sass_checkers = [] " Don't check sass files
let g:syntastic_scss_checkers = [] " Don't check scss files
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-spec mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = "Dispatch bin/rspec {spec}"
let g:mocha_js_command = "Dispatch npm test {spec}"
