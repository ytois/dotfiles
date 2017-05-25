let g:NERDTreeMouseMode=1
let g:NERDTreeQuitOnOpen=0
autocmd vimenter * if !argc() | NERDTree | endif
nnoremap <silent><C-e> :NERDTreeToggle<CR> " Ctr+eでツリー表示

