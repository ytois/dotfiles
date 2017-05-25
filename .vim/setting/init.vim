" 通常設定の読み込み
runtime! setting/basic/*.vim

" dein読み込み
if &compatible
  set nocompatible
endif

let s:dein_path = expand('~/.vim/dein')
let s:dein_repo_path = s:dein_path . '/repos/github.com/Shougo/dein.vim'

" deinなかったらcloneでもってくる
if !isdirectory(s:dein_repo_path)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_path
endif

execute 'set runtimepath^=' . s:dein_repo_path

let g:dein#install_progress_type = 'title'
" let g:dein#enable_notification = 1

call dein#begin(s:dein_path)

call dein#load_toml('~/.vim/setting/plugins.toml', {'lazy': 0})
call dein#load_toml('~/.vim/setting/plugins-lazy.toml', {'lazy': 1})

call dein#end()

" 未インストールのpluginをインストール
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable
