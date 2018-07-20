let g:python2_host_prog = '/Users/akorsak/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/akorsak/.pyenv/versions/neovim3/bin/python'
let g:python_host_prog = '/Users/akorsak/.pyenv/versions/neovim2/bin/python'

source ~/.config/nvim/bundles.vim
source ~/.config/nvim/config.vim
source ~/.config/nvim/mac.vim

set tags=tags;/
set background=light
set re=1

autocmd FileType haxe setlocal shiftwidth=4 tabstop=4 sts=0 expandtab
