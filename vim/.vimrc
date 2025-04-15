" Sensible defaults
set nocompatible
filetype plugin indent on
syntax on
set number
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set noshowmode
set mouse=
set clipboard=unnamedplus
set cursorline
set wildmenu
set noswapfile

" Search subdirectories
set path+=**

" Mappings
nnoremap <Up>    <Nop>
nnoremap <Down>  <Nop>
nnoremap <Left>  <Nop>
nnoremap <Right> <Nop>
nnoremap w W
nnoremap b B
nnoremap <leader>c :cclose<CR>
nnoremap <leader>o :copen<CR>
nnoremap <leader>w :w!<CR>

inoremap <Up>    <Nop>
inoremap <Down>  <Nop>
inoremap <Left>  <Nop>
inoremap <Right> <Nop>
inoremap jk      <Esc>

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
let g:ctrlp_user_command = 'find %s -type f -not -path "*/build/*"'
let g:ctrlp_root_markers = ['.gitignore']
let g:ctrlp_map          = '<C-p>'
let g:ctrlp_cmd          = 'CtrlP'

" Ripgrep
function! SearchPrompt()
  let l:query = input("Search: ")
  if !empty(l:query)
    execute "Rg --vimgrep " . shellescape(l:query)
  else
    execute 'redraw!'
  endif
endfunction

nnoremap <C-s> :call SearchPrompt()<CR>

highlight QuickFixLine cterm=NONE

" LSP
if executable('clangd')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'clangd',
    \ 'cmd': {server_info->['clangd']},
    \ 'allowlist': ['c'],
    \ })
endif

let g:lsp_diagnostics_enabled = 0

" Autocompletion
augroup asyncomplete_setup
  autocmd!
  autocmd FileType * if exists('*asyncomplete#enable_for_buffer') && !isdirectory(expand('%'))
        \ | call asyncomplete#enable_for_buffer()
        \ | endif
augroup END

set completeopt=menuone,noinsert,noselect

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Lightline
set laststatus=2

