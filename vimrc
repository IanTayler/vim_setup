" Show relative line numbers, for easier jk navigation.
" Except on the current line, where we show the actual line number.
set number
set relativenumber

" FileType plugin (~/.vim/ftplugin/*.vim files)
filetype plugin on

" Sensible stuff
set incsearch
set scrolloff=1
set backspace=indent,eol,start
syntax on

" Strip final whitespace by default
function! StripTrailingWhitespaces()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call StripTrailingWhitespaces()

" Default tabs and indent config.
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Use system clipboard
set clipboard=unnamedplus

" vim_plug
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

" Bindings
nnoremap <Space> :FZF<CR>
