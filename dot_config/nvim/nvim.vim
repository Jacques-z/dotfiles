" use vim-plug to control plugins
call plug#begin()

" Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
" Plug 'mbbill/undotree'
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='general'
let g:vimtex_quickfix_mode=0
let g:vimtex_imaps_leader = ';'
" set conceallevel=1
let g:tex_conceal='abdmg'
Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
Plug 'vim-latex/vim-latex'
"filetype plugin on
"
"filetype indent on
"let g:tex_flavor='latex'

Plug 'cpea2506/one_monokai.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'jbyuki/nabla.nvim'
call plug#end()

