" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

set background=dark

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" 显示行号
set number

" 突出显示当前行
" set cursorline 

" 自适应不同语言的智能缩进
filetype indent on

" 将制表符扩展为空格
set expandtab

" 设置编辑时制表符占用空格数
set tabstop=4

" 设置格式化时制表符占用空格数
set shiftwidth=4

" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 自动补全括号
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>

" 输入搜索内容时就显示搜索结果
set incsearch

" 搜索时高亮显示被找到的文本
" set hlsearch

" 当光标一段时间保持不动了，就禁用高亮
autocmd cursorhold * set nohlsearch

" 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>
