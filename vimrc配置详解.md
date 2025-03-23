# 自定义先导键为空格键（space）

# 自定义折叠的起始符和终止符
1. 起始符： (注释)START:
2. 终止符:  (注释)END:

# 使用vim-plug管理插件
## 使用的插件
> `'mhinz/vim-startify'` 新的初始界面\n
> `'vim-airline/vim-airline'`和`'vim-airline/vim-airline-thems'` 状态栏\n
> `'yggdroot/indentline'` 适用于python的缩进线

# 行号
```
set number
set relativenumber
```

# 高亮
## 语法
> `syntax on`
## 搜索
> `set hlsearch`     高亮匹配的选项
> `set incsearch`    边搜索边高亮
## 光标线
> `set cursorline`   下划线提示光标所在的行

# 键盘映射
## 窗口切换
### 普通模式
> ==<leader>==键和**hjkl**
### terminal模式
> ==<c- >==键和**hjkl**
### 窗口移动
> ==<leader>==键和**HJKL**

# 成对引用
## 英标的
> '
> "
> {
> [
> (

# 快捷键总结
## ==<c- >
### terminal模式下的窗口切换
> ==<c- >==键和**hjkl**
### terminal与normal模式的切换
> ==<c- >==键和**t**
## ==<leader>==
### 普通模式下的窗口切换
> ==<leader>==键和**hjkl**
### 普通模式下的窗口移动
> ==<leader>==键和**HJKL**
### 其他
> ==<leader>==键和**s**等同于执行`:vertical terminal<cr>`
> ==<leader>==键和**w**等同于执行`:write<cr>`
> ==<c- >==键和**s**等同于执行`so %`即为`:source %`
