" @ author: 李苦李(www.likuli.com)
" @ date: 2015-10-15

" --------------- Vundle Begin ---------------
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'ack.vim'
Bundle 'Tagbar'
Bundle 'checksyntax-B'
Bundle 'Emmet.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/unite.vim'

filetype plugin indent on     " required!

" --------------- Vundle End ---------------



" --------------- Vim Setting Begin ---------------
syntax on
"set cursorline
set showcmd "输入的命令显示出来，看的清楚些
"set ruler
set shiftwidth=4
set cmdheight=1
set tabstop=4
set showtabline=2
set nu
set is
set wildmenu   "显示补全列表
set wildmode=longest:full   " 补全行为设置
set hidden
set hlsearch
set nobackup
set noswapfile
set backspace=indent,eol,start
set nowb
set encoding=utf-8

let g:debuggerPort=9001
let g:miniBufExplTabWrap = 1
let g:debuggerMaxDepth = 10
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
let g:winManagerWindowLayout='FileExplorer|TagList'
let NERDChristmasTree=1
let mapleader = "\<space>"

source ~/.vim/statusline.vim
source ~/.vim/colors/wuye.vim

" --------------- Vim Setting End ---------------



" --------------- Map Begin ---------------
map vp :vsp
map sp :sp
map q :q!<CR>
map w :w<CR>
map te :tabe<space>
map tc :tabc<CR>
map tn :tabn<CR>
map tp :tabp<CR>
map bp :Bp<CR>
map ml :NERDTree<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>b :<C-u>Unite buffer<CR>

nmap wm :WMToggle<cr>
nmap tt :NERDTreeToggle<cr>

if(has('mac'))
    map <Leader>tg :!/usr/local/bin/ctags -R<CR> :UpdateTypesFile<CR> :!cscope -Rbq<CR>
else
    map <Leader>tg :!ctags -R<CR>
endif

" --------------- Map End ---------------

