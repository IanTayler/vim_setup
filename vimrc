" Show relative line numbers, for easier jk navigation.
" Except on the current line, where we show the actual line number.
set number
set relativenumber
" Show line and column at the bottom.
set ruler

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
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tpope/vim-commentary'
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'JuliaEditorSupport/julia-vim'

call plug#end()

" Plugin-related config

let g:ale_lint_on_text_changed = 'never'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Make lightline work properly under tmux
if !has('gui_running')
  set t_Co=256
endif
" Don't show mode as it's already on lightline
set noshowmode
" No idea what this is, but it doesn't work without it
set laststatus=2

" Bindings
let mapleader=","
nnoremap <leader><leader> ,
nnoremap ; :
vnoremap ; :
nnoremap : ;
vnoremap : ;
nnoremap <leader><space> :FZF<CR>
nnoremap <leader>x :Lines<CR>
nnoremap <leader>g :Gstatus<CR>
inoremap <leader>g :Gstatus<CR>
nnoremap <F2> :ALELint<CR>
noremap <C-n> :NERDTreeToggle<CR>
