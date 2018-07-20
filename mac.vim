" Make `jj` and `jk` throw you into normal mode
inoremap jj <esc>
inoremap jk <esc>

function! StripTrailingWhitespace()
  normal mZ
  let l:chars = col("$")
  %s/\s\+$//e
  if (line("'Z") != line(".")) || (l:chars != col("$"))
    echo "Trailing whitespace stripped\n"
  endif
  normal `Z
endfunction

autocmd BufWritePre *.*, :call StripTrailingWhitespace()
