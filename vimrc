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
" ctrlP
set wildignore+=*/node_modules/*,*/tmp/*,*.so,*.swp,*.zip

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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RUNNING TESTS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>t :call RunTestFile()<cr>
map <leader>T :call RunNearestTest()<cr>
map <leader>A :call RunTests('')<cr>
map <leader>c :w\|:!script/features<cr>
map <leader>w :w\|:!script/features --profile wip<cr>

function! RunTestFile(...)
    if a:0
        let command_suffix = a:1
    else
        let command_suffix = ""
    endif

    " Run the tests for the previously-marked file.
    let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\)$') != -1
    if in_test_file
        call SetTestFile()
    elseif !exists("t:grb_test_file")
        return
    end
    call RunTests(t:grb_test_file . command_suffix)
endfunction

function! RunNearestTest()
    let spec_line_number = line('.')
    call RunTestFile(":" . spec_line_number . " -b")
endfunction

function! SetTestFile()
    " Set the spec file that tests will be run for.
    let t:grb_test_file=@%
endfunction

function! RunTests(filename)
    " Write the file and run tests for the given filename
    :w
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    if filereadable("script/test")
        exec ":!script/test " . a:filename
    else
        exec ":!rspec --color --format documentation " . a:filename
    end
endfunction
