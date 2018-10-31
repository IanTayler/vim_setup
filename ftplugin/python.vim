setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4

let b:ale_linters = ['pylint']
let b:ale_fixers = ['black']
" Reasonable defaults.
let b:ale_python_pylint_options = '--ignore=node_modules,.serverless,.git'
let b:ale_python_pylint_change_directory = 0
let b:ale_fix_on_save = 1
" Bindings
nnoremap <F2> :ALELint<CR>
