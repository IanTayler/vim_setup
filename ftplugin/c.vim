setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2

let b:ale_c_gcc_options="-std=c11 -Wall -I/usr/include/python3.7m/"
let b:ale_c_clang_options="-std=c11 -Wall -I/usr/include/python3.7m/"

let b:ale_fixers = ['clang-format']
" Reasonable defaults.
let b:ale_fix_on_save = 1
