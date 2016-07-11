" personal configurations
set number
let g:ycm_confirm_extra_conf = 0
syntax enable
" colorscheme monokai
colorscheme molokai
set mouse=a
set autochdir
set guifont=Monospace
set tabstop=3
set shiftwidth=3
"let g:molokai_original = 1

" Tab navigation like Firefox.
nnoremap <C-p>    :tabprevious<CR>
nnoremap <C-n>    :tabnext<CR>
inoremap <C-p>    <Esc>:tabprevious<CR>i
inoremap <C-n>    <Esc>:tabnext<CR>i

"let g:ycm_global_extra_conf = "~/.vim_runtime/.ycm_extra_conf.py"

" autocmd BufNewFile,BufRead *.cpp set formatprg=astyle\ --options=/home/kostis/.astylerc

"noremap <F3> 	:Autoformat<CR>
"au BufWrite	 * 	:Autoformat
"let g:formatterpath = ['/usr/bin/astyle']
"let g:formatdef_astyle = '"astyle --options=/home/kostis/.astylerc"'
"let g:formatters_cpp = ['astyle']
