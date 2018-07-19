call plug#begin('~/.vim/plugged')

Plug 'edkolev/tmuxline.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'

call plug#end()


"VIM AIRLINE STUFF"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='angr'
let g:airline_powerline_fonts = 1 

"ACK and silversearch-ag"
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  endif




