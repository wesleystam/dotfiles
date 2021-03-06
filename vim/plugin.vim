" Vim Plugins

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'fatih/vim-go'
Plug 'slim-template/vim-slim'
Plug 'moll/vim-node'
Plug 'tpope/vim-dispatch'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elixir-lang/vim-elixir'
Plug 'junegunn/vim-easy-align'
Plug 'pearofducks/ansible-vim'

" Search and navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'rking/ag.vim'
Plug 'tpope/vim-eunuch'

" Git
Plug 'tpope/vim-fugitive'

" Syntax
Plug 'w0rp/ale'
Plug 'ngmy/vim-rubocop'

" Testing
Plug 'geekjuice/vim-spec'

" HTML
Plug 'mattn/emmet-vim'

" Color schemas
Plug 'tomasr/molokai'
Plug 'wimstefan/Lightning'

call plug#end()
