set nocompatible

" Load Plugins
if filereadable(expand("~/.vim/plugin.vim"))
  source ~/.vim/plugin.vim
endif

filetype plugin indent on
syntax enable
set encoding=utf-8
set re=1

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
set relativenumber
set winwidth=120

" If a file is changed outside of vim, automatically reload it without asking
set autoread

" search stuff
set wildignore+=*/node_modules/*,*/log/*,*/public/**/*,*/tmp/* " ignore node_modules
set incsearch     " do incremental searching
set hlsearch      " highlight search
set ignorecase    " case insensitive search
set smartcase
:nmap <C-p> :Files<CR>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

command! Q q
command! W w
command! Qa qa
command! Wa wa
command! WA wa

:map <C-h> <C-w>h
:map <C-j> <C-w>j
:map <C-k> <C-w>k
:map <C-l> <C-w>l

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

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

colorscheme lucius

" Use persistent undo history.
if !isdirectory("/tmp/.vim-undo-dir")
    call mkdir("/tmp/.vim-undo-dir", "", 0700)
endif
set undodir=/tmp/.vim-undo-dir
set undofile

" No more beeping
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Go stuff
au FileType go nmap <leader>r <Plug>(go-run)

" Jump to last cursor position unless it's invalid or in an event handler
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

au BufRead,BufNewFile *.es6 set filetype=javascript
autocmd BufNewFile,BufRead *.pdf.erb let b:eruby_subtype='html'
autocmd BufNewFile,BufRead *.pdf.erb set filetype=eruby
autocmd BufNewFile,BufRead *.axlsx set filetype=ruby

" ALE
nmap <silent> <C-a> <Plug>(ale_previous)
nmap <silent> <C-d> <Plug>(ale_next)

set statusline=%*\ %t\ [%l:%L\ %c]
set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.([%l:%L],%c%V%)\ %P

let js_fixers = ['prettier', 'eslint']
let g:ale_lint_on_text_changed = 'never'
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'css': ['prettier'],
\   'javascript': js_fixers,
\   'typescript': js_fixers,
\   'typescriptreact': js_fixers,
\   'ruby': ['rubocop'],
\}
let g:ale_fix_on_save = 1
let g:ale_linters = {
\   'eruby': ['erblint'],
\}

" vim-spec mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec(0)<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>A :call RunAllSpecs()<CR>
map <Leader>a :call RunAllWihoutSystemSpecs()<CR>

map <Leader>c '!cucumber' %<CR>
map <Leader>b :Dispatch yarn tsc --build<CR>


let g:rspec_command = "!rspec {spec}"
let g:mocha_js_command = "!npm test {spec}"

function! RunAllWihoutSystemSpecs()
  let s:rspec_command = substitute(g:rspec_command, "{spec}", "--exclude-pattern=\"spec/system/*_spec.rb\"", "g")

  execute s:rspec_command
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-RUBY CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Do this:
"   first
"     .second do |x|
"       something
"     end
" Not this:
"   first
"     .second do |x|
"     something
"   end
:let g:ruby_indent_block_style = 'do'
" Do this:
"     x = if condition
"       something
"     end
" Not this:
"     x = if condition
"           something
"         end
:let g:ruby_indent_assignment_style = 'variable'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PROMOTE VARIABLE TO RSPEC LET
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! PromoteToLet()
  :normal! dd
  " :exec '?^\s*it\>'
  :normal! P
  :.s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
  :normal ==
endfunction
:command! PromoteToLet :call PromoteToLet()
:map <leader>p :PromoteToLet<cr>

let g:rails_projections = {
      \  "app/controllers/*_controller.rb": {
      \      "test": [
      \        "spec/requests/{}_spec.rb",
      \        "spec/controllers/{}_controller_spec.rb",
      \        "test/controllers/{}_controller_test.rb"
      \      ],
      \      "alternate": [
      \        "spec/requests/{}_spec.rb",
      \        "spec/controllers/{}_controller_spec.rb",
      \        "test/controllers/{}_controller_test.rb"
      \      ],
      \   },
      \   "spec/requests/*_spec.rb": {
      \      "command": "request",
      \      "alternate": "app/controllers/{}_controller.rb",
      \      "template": "require 'rails_helper'\n\n" .
      \        "RSpec.describe '{}' do\nend",
      \   },
      \ }
