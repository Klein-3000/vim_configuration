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

"START:
"设置语法高亮 相反值 off
syntax on
"设置搜索高亮
set hlsearch
set incsearch "边输入,边高亮匹配的字符

"设置光标所在行显示下划线
set cursorline
"取消高亮
nnoremap <leader>nh :nohl<cr>  
"END:

"START:键盘映射
inoremap jj <esc> 

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
nnoremap <leader>b i #!/bin/bash
" END:
"gf和gF查找文件的能力

"set path+=**

"START:解决正常模式下中文输入的问题
"移动
nnoremap <c-h>   h
nnoremap <c-j>   j
nnoremap <c-k>   k
nnoremap <c-l>   l
nnoremap <c-g>   gg
nnoremap <c-n>   G
"操作
nnoremap <c-w>   :w<cr>
nnoremap <c-q>   :q<cr>
nnoremap <c-f>   :
"END:

"START:vimdiff快捷键跳转
nnoremap <c-[> [c
nnoremap <c-]> ]c
"END:

"START: 设置C语言快捷键
" 定义快捷键 <leader>c 用于插入 #include <stdio.h> 和一个空行，并确保光标位于空行上，同时删除上方的空行
nnoremap <leader>c :call InsertStdioHeader()<CR>

function! InsertStdioHeader()
  " 获取当前行号
  let current_line = line('.')

  " 插入 #include <stdio.h> 和一个空行
  call append(current_line, ['#include <stdio.h>', ''])

  " 删除 #include <stdio.h> 上方的空行（如果存在）
  if getline(current_line) =~ '^\s*$'
    execute current_line . "delete"
  endif

  " 计算需要移动到的行号（即 #include <stdio.h> 下面的空行）
  let target_line = current_line + 2

  " 移动光标到指定位置并进入正常模式
  execute "normal! " . target_line . "G"
endfunction

" 定义快捷键 <leader>i 用于插入 main 函数模板并定位光标
nnoremap <leader>i :call InsertMainFunction()<CR>

function! InsertMainFunction()
  " 获取当前行号
  let current_line = line('.')

  " 插入 main 函数模板
  call append(current_line, ['int main(){', '    ', '    return 0;', '}'])

  " 计算需要移动到的行号和列号
  let target_line = current_line + 2
  let target_col = 5

  " 移动光标到指定位置
  execute "normal! " . target_line . "G" . "i"
endfunction
"END:
