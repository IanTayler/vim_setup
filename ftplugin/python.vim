setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4

let b:ale_linters = ['pylint']
" Reasonable defaults.
let g:ale_python_pylint_options = '--ignore=node_modules,.serverless,.git'
let g:ale_python_pylint_change_directory = 0
