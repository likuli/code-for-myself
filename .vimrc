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

"Bundle 'statusline.vim'
Bundle 'ack.vim'
Bundle 'Tagbar'
Bundle 'Emmet.vim'
Bundle 'unite.vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'

filetype plugin indent on     " required!

" --------------- Vundle End ---------------



" --------------- Vim Setting Begin ---------------
"set ruler
"set cursorline
"set showtabline=2
syntax on
set showcmd "输入的命令显示出来，看的清楚些
set shiftwidth=4
set cmdheight=1
set tabstop=4
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

set laststatus=2 
"" 状态栏各个状态 
let statusHead	="%-.50f\ %h%m%r" 
let statusBreakPoint	="%<" 
let statusSeparator	="|" 
let statusFileType	="%{((&ft\ ==\ \"help\"\ \|\|\ &ft\ ==\ \"\")?\"\":\"[\".&ft.\"]\")}" 
let statusFileFormat ="[%{(&ff\ ==\ \"unix\")?\"u\":\"d\"}]" 
let statusAscii	="\{%b:0x%B\}" 
let statusCwd	="%-.50{getcwd()}" 
let statusBody	=statusFileType.statusFileFormat.statusSeparator.statusAscii.statusSeparator."\ ".statusBreakPoint.statusCwd 
let statusEncoding	="[%{(&fenc\ ==\ \"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]" 
let statusBlank	="%=" 
let statusKeymap	="%k" 
let statusRuler	="%-12.(%lL,%c%VC%)\ %P" 
let statusTime	="%{strftime(\"%y-%m-%d\",getftime(expand(\"%\")))}" 
let statusEnd=statusKeymap."\ ".statusEncoding.statusRuler."\ ".statusTime 
"" 最终状态栏的模式字符串 
let statusString=statusHead.statusBody.statusBlank.statusEnd 
set statusline=%!statusString 

" --------------- Vim Setting End ---------------



" --------------- Map Begin ---------------
map vp :vsp
map sp :sp
map q :q!<CR>
map <leader>w :w<CR>
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
map tb :TagbarToggle<cr>

nmap wm :WMToggle<cr>
nmap tt :NERDTreeToggle<cr>

map <C-H><C-H> eb :Ack "<C-R><C-W>"<CR>
let g:ackprg = 'ag --nogroup --nocolor --column'

if(has('mac'))
    map <Leader>tg :!/usr/local/bin/ctags -R<CR> :UpdateTypesFile<CR> :!cscope -Rbq<CR>
else
    map <Leader>tg :!ctags -R<CR>
endif

" --------------- Map End ---------------

