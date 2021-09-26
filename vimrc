"Nabil Mohammed
"Vimrc

"general options
set encoding=utf-8
set tabstop=4 softtabstop=4 "tab changes to 4 spaces
set shiftwidth=4 "number of spaces for autoindent
set expandtab "expand tab to spaces in insert mode
set smartindent
set nu
set nohlsearch "removes highlight after search
set hidden "switch buffers without having to save
set noerrorbells
set noswapfile
set nobackup
set incsearch
set scrolloff=8 "start scrolling when 8 lines from bottom
set cursorline "set bar highlight for line
set undofile "persistent undo
set undodir=~/.vim/undodir/ "necessary for undofile

"plugins
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
"vertical indent
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/jpalardy/vim-slime.git'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
call plug#end()

"vim-slime settings
let g:slime_target = "tmux"

"vim-vnip settings
imap <expr> <C-u>   vsnip#expandable()  ? '<Plug>(vsnip-expand)': '<C-u>'
smap <expr> <C-u>   vsnip#expandable()  ? '<Plug>(vsnip-expand)': '<C-u>'
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

"colorscheme
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set bg=dark

"vertical indent
let g:indentLine_char = '▏' "indentation guide
let g:indentLine_color_term = 239

"airline settings
let g:airline_section_z = '%l/%L' "cur_line_num / tot_line_count
let g:airline_section_y = ''
let g:airline_section_c = ''
let g:airline#extensions#tabline#enabled = 1 "enable buffer bar on top

"fzf.vim settings
let g:fzf_preview_window = ['right:50%']

let mapleader = " "

"remaps
inoremap kj <Esc>
"verical split movement remaps
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
"fzf.vim remaps
nnoremap <C-f> :Files<CR>
inoremap <C-f> <Esc>:BLines<CR>
"buffer movement
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>
nnoremap <C-q> :bd<CR>
"copy to clipboard
vnoremap <C-c> "+y<CR>

"remove trailing whitespace
fun! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

"autogroup to execute trimming whitespace before buf is written
augroup TRWHTSPACE
    "clear all autocommands in group
    autocmd!
    autocmd BufWritePre * :call TrimWhiteSpace()
augroup END
