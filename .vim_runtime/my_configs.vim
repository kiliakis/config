" personal configurations
set number
let g:loaded_youcompleteme = 1
let g:ycm_confirm_extra_conf = 0
syntax enable
" colorscheme monokai
colorscheme molokai
set mouse=a
set autochdir
set guifont=Monospace
set tabstop=4
set shiftwidth=4
let g:molokai_original = 1

" Tab navigation like Firefox.
nnoremap <gT>    :tabprevious<CR>
nnoremap <gt>    :tabnext<CR>
inoremap <gT>    <Esc>:tabprevious<CR>i
inoremap <gt>    <Esc>:tabnext<CR>i

" latex-suite 
filetype plugin on
set shellslash
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='xelatex'
let g:Tex_DefaultTargetFormat='pdf'

"let g:ycm_global_extra_conf = "~/.vim_runtime/.ycm_extra_conf.py"

" autocmd BufNewFile,BufRead *.cpp set formatprg=astyle\ --options=/home/kostis/.astylerc

"noremap <F3> 	:Autoformat<CR>
"au BufWrite	 * 	:Autoformat
"let g:formatterpath = ['/usr/bin/astyle']
"let g:formatdef_astyle = '"astyle --options=/home/kostis/.astylerc"'
"let g:formatters_cpp = ['astyle']
