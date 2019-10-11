noremap <F2> :GoMetaLinter<CR>

let b:go_metalinter_autosave = 0
let b:ale_linters = ['govet', 'golint']
let b:ale_go_go_executable = "myhackygo"
let b:ale_lint_on_save = 1
