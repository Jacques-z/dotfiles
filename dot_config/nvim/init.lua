local Plug = vim.fn["plug#"]

-- 将先导键映射为空格键
vim.g.mapleader = " "

-- use vim-plug to control plugins
vim.call("plug#begin", "~/.config/nvim/plugged")

-- Plug 'tpope/vim-fugitive'
Plug("sindrets/diffview.nvim")
Plug("lewis6991/gitsigns.nvim")
Plug("cpea2506/one_monokai.nvim")
Plug("glepnir/zephyr-nvim")
Plug("nvim-treesitter/nvim-treesitter")
Plug("jbyuki/nabla.nvim")
Plug("easymotion/vim-easymotion")
-- Plug 'mbbill/undotree'

Plug("lervag/vimtex")
vim.g.tex_flavor = "latex"
vim.g.vimtex_view_method = "general"
vim.g.vimtex_quickfix_mode = 0
vim.g.vimtex_imaps_leader = ";"
vim.opt.conceallevel = 1
vim.g.tex_conceal = "abdmg"

Plug("sirver/ultisnips")
vim.g.UltiSnipsExpandTrigger = "<tab>"

Plug("vim-latex/vim-latex")
-- vim.keymap.set("i", "mk", "$$", { noremap = false })
-- filetype plugin on

-- filetype indent on
-- let g:tex_flavor='latex'
vim.call("plug#end")

require("one_monokai").setup({
	transparent = true,
})
-- No transparancy
-- require("zephyr")

require("gitsigns").setup()

vim.keymap.set("i", "jk", "<esc>")

-- 用 leader-w 保存文件
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>")
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>")
vim.keymap.set("n", "<leader>Q", "<cmd>q!<cr>")

vim.cmd([[

syntax on
set number
set shiftwidth=2
set tabstop=4
set expandtab
set autoindent
set cursorline

set undofile
if !isdirectory($HOME."/.vim/undo-dir")
  call mkdir($HOME."/.vim/undo-dir", "p")
endif
set undodir=~/.vim/undo-dir

packloadall
silent! helptags ALL

imap mk $$

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

noremap <leader>z za

" autocmd BufWritePost ~/.local/share/chezmoi/* ! chezmoi apply --source-path "%"
 
]])
