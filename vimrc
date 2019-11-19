execute pathogen#infect()

"Settings
syntax on
filetype plugin indent on
set number
set bg=dark
syntax enable

"Plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim

"NERDTree
let g:NERDTreeWinPos = "left"
"autocmd VimEnter * NERDTree "opens nerd tree by default
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"Cursor
":autocmd InsertEnter,InsertLeave * set cul!
if exists('$TMUX')
	  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    else
	      let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	        let &t_EI = "\<Esc>]50;CursorShape=0\x7"
	endif
	:autocmd InsertEnter * set cul
	:autocmd InsertLeave * set nocul

"Custom ignore
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"Spacing
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType ruby setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=4 sts=4 sw=4
autocmd FileType terraform setlocal ts=2 sts=2 sw=2
autocmd FileType proto setlocal ts=4 sts=4 sw=4
autocmd FileType gradle setlocal ts=2 sts=2 sw=2
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"Terraform
let g:terraform_align=1
let g:terraform_commentstring='//%s'

