" 将先导键映射为空格键
let mapleader="\<space>"

imap mk $$

syntax on
set number
set shiftwidth=2
set tabstop=4
set expandtab
set autoindent
set cursorline
set wrap

set undofile
if !isdirectory($HOME."/.vim/undo-dir")
  call mkdir($HOME."/.vim/undo-dir", "p")
endif
set undodir=~/.vim/undo-dir

packloadall
silent! helptags ALL

" use <C-h,j,k,l> to quick jump between windows
noremap <c-h> <c-w><c-h>
noremap <c-l> <c-w><c-l>

" close buffer without close window
command! Bd :bp | :sp | :bn | :bd

" fold method
set foldmethod=syntax
autocmd BufRead * normal zR

" set relative number
set relativenumber

" set clipboard=unnamedplus

" set 括号配对
inoremap jk <esc>

" 用 leader-w 保存文件
noremap <leader>w :w<cr>
noremap <leader>q :q<cr>
noremap <leader>Q :qa!<cr>

noremap <leader>z za

autocmd BufWritePost ~/.local/share/chezmoi/* ! chezmoi apply --source-path "%"
 
