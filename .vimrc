call plug#begin('~/.vim/plugged')

Plug 'edkolev/tmuxline.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'

call plug#end()

"Disable auto indents"
filetype indent off

"VIM AIRLINE STUFF"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='angr'
let g:airline_powerline_fonts = 1 

"ACK and silversearch-ag"
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  endif

"Vertical character bar set at 80 chars"
"if exists('+colorcolumn')
"    set colorcolumn=80
"else
"    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%80v.\+', -1)
"endif

" Press F6 to toggle color column
nnoremap <silent><F6> :call <SID>ToggleColorColumn()<cr>
set colorcolumn=80
set tw=79       " width of document (used by gd)
set nowrap      " don't automatically wrap on load
set fo-=t       " don't automatically wrap text when typing
let s:color_column_old = 0
highlight ColorColumn ctermbg=2*
function! s:ToggleColorColumn()
    if s:color_column_old == 0
        let s:color_column_old = &colorcolumn
        windo let &colorcolumn = 0
    else
        windo let &colorcolumn=s:color_column_old
        let s:color_column_old = 0
    endif
endfunction



