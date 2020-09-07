if executable('sourcekit-lsp')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'sourcekit-lsp',
        \ 'cmd': {server_info->['sourcekit-lsp']},
        \ 'whitelist': ['swift'],
        \ })
endif
setlocal omnifunc=lsp#complete
let b:ale_linters = ['swiftlint']
let b:ale_fixers = ['swiftformat', 'trim_whitespace', 'remove_trailing_lines']
nnoremap gd :<C-u>LspDefinition<CR>
nnoremap gh :<C-u>LspHover<CR>
nnoremap gr :<C-u>LspReferences<CR>
