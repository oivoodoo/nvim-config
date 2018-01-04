set nocompatible

filetype off

call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'altercation/vim-colors-solarized'
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/gitignore.vim'
Plug 'fatih/vim-go'
Plug 'vim-scripts/SuperTab'
Plug 'godoctor/godoctor.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'rlue/vim-fold-rspec'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'vim-scripts/L9'
Plug 'vim-scripts/FuzzyFinder'
Plug 'https://github.com/tpope/vim-rails.git'

Plug 'autozimu/LanguageClient-neovim', {'tag': 'binary-*-x86_64-apple-darwin'}
Plug 'roxma/nvim-completion-manager'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'davidhalter/jedi-vim'
Plug 'lambdalisue/vim-pyenv'
Plug 'lepture/vim-jinja'
Plug 'hynek/vim-python-pep8-indent'

Plug 'vim-scripts/tComment'

Plug 'derekwyatt/vim-scala'

Plug 'WolfgangMehner/lua-support'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'dhruvasagar/vim-table-mode'

Plug 'slashmili/alchemist.vim'
Plug 'https://github.com/elixir-editors/vim-elixir.git'

Plug 'kchmck/vim-coffee-script'

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-bundler'

Plug 'rust-lang/rust.vim'

call plug#end()

filetype plugin indent on     " and turn it back on!

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:completor_auto_trigger = 0
let g:autofmt_autosave = 1

" a basic set up for LanguageClient-Neovim
" << LSP >> {{{
let g:LanguageClient_autoStart = 0
nnoremap <leader>lcs :LanguageClientStart<CR>
" if you want it to turn on automatically
" let g:LanguageClient_autoStart = 1

let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls'],
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'go': ['go-langserver'] }

noremap <silent> H :call LanguageClient_textDocument_hover()<CR>
noremap <silent> Z :call LanguageClient_textDocument_definition()<CR>
noremap <silent> R :call LanguageClient_textDocument_rename()<CR>
noremap <silent> S :call LanugageClient_textDocument_documentSymbol()<CR>
" }}}
