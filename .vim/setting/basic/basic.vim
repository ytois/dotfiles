set backupskip=/tmp/*,/private/tmp/*

set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double
set clipboard+=unnamed

syntax on
set t_Co=256
set background=dark
" let g:enable_bold_font = 1
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
colorscheme hybrid_material
" itemr2へ右記カラープリセットを適用する https://github.com/w0ng/vim-hybrid

set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2

set incsearch
set ignorecase
set smartcase
set hlsearch

set whichwrap=b,s,h,l,<,>,[,],~
set cursorline
set showmatch
source $VIMRUNTIME/macros/matchit.vim

set number
set list
set listchars=tab:▸\ ,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
hi NonText guibg=NONE guifg=DarkGreen
hi SpecialKey guibg=NONE guifg=DarkGreen
set mouse=a
set ttymouse=xterm2
set laststatus=2
set wildmenu
set noswapfile
set backspace=indent,eol,start

" 折りたたみ設定
set foldmethod=indent
set foldlevel=6

" クリップボードからペースト時にインデントが崩れないように
if &term =~ "xterm"
  let &t_SI .= "\e[?2004h"
  let &t_EI .= "\e[?2004l"
  let &pastetoggle = "\e[201~"

  function XTermPasteBegin(ret)
    set paste
    return a:ret
  endfunction
  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

" jjでESC
inoremap <silent> jj <ESC>

" Esc Esc でハイライトOFF
nnoremap <Esc><Esc> :<C-u>set nohlsearch<Return>

" HTMLのタグジャンプ
source $VIMRUNTIME/macros/matchit.vim

" 新規作成時にテンプレートを読み込む
autocmd BufNewFile *.rake 0r ~/.vim/setting/template/rake.txt

" 全角チルダの置換コマンド
command! Rtilde :%s/〜/～/g
