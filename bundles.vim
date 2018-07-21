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
Plug 'sebdah/vim-delve'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'vim-scripts/SuperTab'
Plug 'godoctor/godoctor.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'thoughtbot/vim-rspec'
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
Plug 'w0rp/ale'

Plug 'slashmili/alchemist.vim'
Plug 'https://github.com/elixir-editors/vim-elixir.git'

Plug 'kchmck/vim-coffee-script'

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-bundler'

Plug 'rust-lang/rust.vim'
Plug 'direnv/direnv.vim'

Plug 'derekwyatt/vim-scala'
Plug 'majutsushi/tagbar'
Plug 'jdonaldson/vaxe'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/denite.nvim'


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

let g:go_auto_type_info = 1
let g:go_addtags_transform = "snakecase"
let g:go_snippet_engine = "neosnippet"


" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif


" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command='!bundle exec rspec {spec}'

" let g:deoplete#enable_at_startup = 1
"
let g:python3_host_prog=glob('~/.pyenv/versions/neovim3/bin/python')
let g:python_host_prog=glob('~/.pyenv/versions/neovim2/bin/python')
