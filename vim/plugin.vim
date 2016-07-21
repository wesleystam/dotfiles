" Vim Plugins

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'kchmck/vim-coffee-script'
Plug 'fatih/vim-go'
Plug 'slim-template/vim-slim'
Plug 'moll/vim-node'
Plug 'tpope/vim-dispatch'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elixir-lang/vim-elixir'
Plug 'junegunn/vim-easy-align'

" Search and navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'rking/ag.vim'
Plug 'tpope/vim-eunuch'

" Git
Plug 'tpope/vim-fugitive'

" Syntax
Plug 'scrooloose/syntastic'
Plug 'rizzatti/dash.vim'

" Testing
Plug 'geekjuice/vim-spec'

" HTML
Plug 'mattn/emmet-vim'

" Color schemas
Plug 'tomasr/molokai'
Plug 'twerth/ir_black'
Plug 'wimstefan/Lightning'
Plug 'jdkanani/vim-material-theme'

call plug#end()
