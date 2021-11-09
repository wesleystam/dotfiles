" Vim Plugins

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'slim-template/vim-slim'
Plug 'moll/vim-node'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-markdown'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'jparise/vim-graphql'
Plug 'elixir-lang/vim-elixir'

" Search and navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'rking/ag.vim'
Plug 'tpope/vim-eunuch'
Plug 'romainl/vim-cool'

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
Plug 'jonathanfilip/vim-lucius'
Plug 'tomasr/molokai'
Plug 'wimstefan/Lightning'

call plug#end()
