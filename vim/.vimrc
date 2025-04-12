" Sensible defaults
set nocompatible
filetype plugin indent on
syntax on
set number
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set mouse=
set clipboard=unnamedplus
set cursorline
set wildmenu

" Mappings
nnoremap <Up>    <Nop>
nnoremap <Down>  <Nop>
nnoremap <Left>  <Nop>
nnoremap <Right> <Nop>

inoremap <Up>    <Nop>
inoremap <Down>  <Nop>
inoremap <Left>  <Nop>
inoremap <Right> <Nop>

vnoremap <Up>    <Nop>
vnoremap <Down>  <Nop>
vnoremap <Left>  <Nop>
vnoremap <Right> <Nop>

" Colors
set termguicolors
colorscheme molokai

" Tags
set tags=./tags;

" NERDTree
nnoremap <C-n>c :NERDTreeClose<CR>
nnoremap <C-n>f :NERDTreeFind<CR>

" CtrlP
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_root_markers = ['.gitignore']
let g:ctrlp_map          = '<C-p>'
let g:ctrlp_cmd          = 'CtrlP'

" LSP
if executable('clangd')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'clangd',
    \ 'cmd': {server_info->['clangd']},
    \ 'allowlist': ['c'],
    \ })
endif

let g:lsp_diagnostics_enabled = 0
