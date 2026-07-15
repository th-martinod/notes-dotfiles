call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'

call plug#end()

" --- Configuración de vimtex ---
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" --- Configuración de UltiSnips ---
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
