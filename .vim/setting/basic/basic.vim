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
colorscheme hybrid_material

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

" 新規作成時にテンプレートを読み込む
autocmd BufNewFile *.rake 0r ~/.vim/setting/template/rake.txt
