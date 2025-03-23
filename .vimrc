" START:设置先导键
let mapleader="\<space>"
" END:

" START:折叠的快捷键
" zc:close 关闭折叠
" zo:open  打开折叠
" zR       全部打开
" zM       全部关闭
" za       切换
" END:

" START:自定义折叠的起始符和终止符 
set foldmethod=marker
set foldmarker=START:,END:
" END:

" START: 使用vim-plug管理插件
call plug#begin('~/.vim/plugged')
"最近打开的文件
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-thems'
Plug 'yggdroot/indentline'
"plug 'scrooloose/nerdtree'
call plug#end()
" END:

"START: 行号
"设置行号 相反值 nonumber
set number
"设置相对行号
set relativenumber
"END:

"START:高亮
"设置语法高亮 相反值 off
syntax on
"设置搜索高亮
set hlsearch
set incsearch "边输入,边高亮匹配的字符

"设置光标所在行显示下划线
set cursorline
"END:

"START:键盘映射
imap jj <esc> 

"窗口切换
noremap <leader>h <c-w><c-h>
noremap <leader>j <c-w><c-j>
noremap <leader>k <c-w><c-k>
noremap <leader>l <c-w><c-l>

tnoremap <c-h> <c-w><c-h>
tnoremap <c-j> <c-w><c-j>
tnoremap <c-k> <c-w><c-k>
tnoremap <c-l> <c-w><c-l>
"窗口移动
noremap <leader>H <c-w>H
noremap <leader>J <c-w>J
noremap <leader>K <c-w>K
noremap <leader>L <c-w>L
" END:

"START:"成对引用
inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i
inoremap ( ()<esc>i
"END:


"START:terminal与normal模式的切换
" 或者使用更简单的组合键（如 F5）
tnoremap <silent> <F5> <C-\><C-n>  " 终端模式 → 普通模式
" 普通模式 → 终端模式
nnoremap <silent> <F5> i  
"快捷键方法
tnoremap <c-t> <c-w>N<cr>
nnoremap <c-t> i

"END:

" START:快速启动terminal
nnoremap <leader>s :vertical terminal<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>S :wq<cr> 
nnoremap <leader>; :
nnoremap <c-s> :so %<cr>
" END:

"gf和gF查找文件的能力

"set path+=**

