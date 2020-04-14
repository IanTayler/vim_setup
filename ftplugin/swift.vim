if executable('sourcekit-lsp')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'sourcekit-lsp',
        \ 'cmd': {server_info->['sourcekit-lsp']},
        \ 'whitelist': ['swift'],
        \ })
endif
setlocal omnifunc=lsp#complete
nnoremap gd :<C-u>LspDefinition<CR>
nnoremap gh :<C-u>LspHover<CR>
nnoremap gr :<C-u>LspReferences<CR>
