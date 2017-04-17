syn on                          "语法支持

"common conf {{                 通用配置
set ai                          "自动缩进
set bs=2                        "在insert模式下用退格键删除
set showmatch                   "代码匹配
set laststatus=2                "总是显示状态行
set ruler                       "右下角显示当前光标位置
set expandtab                   "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=2
set tabstop=2
set cursorline                  "为光标所在行加下划线
set number                      "显示行号
set autoread                    "文件在Vim之外修改过，自动重新读入

set ignorecase                  "检索时忽略大小写
set fileencodings=utf-8,gbk     "使用utf-8或gbk打开文件
set encoding=utf-8
set hls                         "检索时高亮显示匹配项
set helplang=cn                 "帮助系统设置为中文
set foldmethod=indent           "代码折叠
set nofoldenable
set clipboard=unnamed           "复制文本至系统的剪贴板
set previewheight=20            "预览方法定义时分割窗口高度
"}}

" conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

" 清除行尾多余的空格
autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :%s/\s\+$//e

" % to bounce from do to end etc.
runtime! macros/matchit.vim

"键盘映射
map <F2> bi{<Esc>ea}<Esc>      "'用一对大括号把一个单词括起来'映射到<F2>键
map <F3> bi[<Esc>ea]<Esc>      "'用一对方括号把一个单词括起来'映射到<F3>键
map <F4> bi"<Esc>ea"<Esc>      "'用一对双引号把一个单词括起来'映射到<F3>键
map <F5> bi%<Esc>ea%<Esc>      "'用一对百分号把一个单词括起来'映射到<F3>键
set whichwrap=b,s,<,>,h,l,[,]   "指定可以换行的命令
set wrap

" enable emmet just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css,erb EmmetInstall

" easytags: async tags
let g:easytags_async = 1

" Markdown plugin
" disable the folding configuration for markdown
let g:vim_markdown_folding_disabled = 1
" enable TOC window auto-fit
let g:vim_markdown_toc_autofit = 1
" highlight YAML front matter as used by Jekyll
let g:vim_markdown_frontmatter = 1

"conf for plugins {{ 插件相关的配置
"状态栏的配置 
"powerline{
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'
"}
"pathogen是Vim用来管理插件的插件
"pathogen{
execute pathogen#infect()
syntax on
filetype plugin indent on
"}

"}}

colorscheme gruvbox
set background=dark

" RSpec.vim mappings
map <Leader>c :call RunCurrentSpecFile()<CR>
map <Leader>n :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
