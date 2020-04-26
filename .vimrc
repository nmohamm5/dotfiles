syntax on
filetype plugin indent on
set relativenumber

call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'vim-airline/vim-airline'

call plug#end()

colorscheme onehalfdark
let g:lightline = {'colorscheme' : 'onehalfdark'}
let g:airline_theme='onehalfdark'

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
