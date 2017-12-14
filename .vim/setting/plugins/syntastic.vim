" active_filetypesで保存時に走らせるファイルタイプを指定
let g:syntastic_mode_map = { 'mode': 'passive',
           \ 'active_filetypes': ['ruby', 'javascript', 'coffee'] }

let g:syntastic_ruby_checkers = ['rubocop', 'mri']

" npm i -g jshint
let g:syntastic_javascript_checkers = ['jshint']

" npm i -g eslint
" let g:syntastic_javascript_checkers = ['eslint']

" npm i -g coffeelint
let g:syntastic_coffee_checkers = ['coffeelint']
