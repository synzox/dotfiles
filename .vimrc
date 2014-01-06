" " 基本设置
" 不兼容vi，否则退格键backspace和上下左右光标移动键不能用，在编辑模式下，移动光标会变成A B C D等字符并换行
set nocompatible
" 语法高亮
syntax on
" 设置Vim内部使用的字符编码
set encoding=utf-8
" 设置Vim用于屏幕显示的编码
set termencoding=utf-8
" 使用中文菜单，并使用 UTF-8 编码
set langmenu=zh_CN.UTF-8
" 使用中文提示信息，并使用 UTF-8 编码
language message zh_CN.UTF-8
" 设置编码的自动识别
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" 设置文件保存的编码"
set fileencoding=utf-8
" 防止特殊符号无法正常显示
set ambiwidth=double 
" 开启文件类型自动识别，启用文件类型插件，启用针对文件类型的自动缩进
filetype plugin indent on
" 文件格式设为unix
set ffs=unix
" 设置图形界面下的字体
" set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
set guifont=Inconsolata\ for\ Powerline\ Medium\ 12
" 打开 VIM 的状态栏标尺
set ruler
" 搜索时高亮显示被找到的文本 
set hlsearch

" " 文本编辑设置
" 设置Tab宽度为4个空格
set tabstop=4
" 自动缩进的时候，缩进尺寸为4个空格
set shiftwidth=4
" Tab替换为空格
set expandtab
" 删除Tab所生成的空格
set smarttab
" 显示行号
set number
" 设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set showmatch
" TAB会被显示成 ">-" 而行尾多余的空白字符显示成 "-"
"set listchars=tab:>-,trail:-
" 用浅色高亮当前编辑行
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
" 高亮当前列
"set cuc

" " 断行设置
" 设置光标超过78列时折行
set tw=78
" 不在单词中间断行
set linebreak
"打开断行模块对亚洲语言支持
set fo+=mB

" " 编码设置
" 打开普通文件类型的自动缩进
set autoindent
" 依据上面的缩进格式，智能选择缩进方式
set smartindent
" 设置代码折叠的方式
set foldmethod=syntax
" 如果前面启用了代码折叠，那么文件一打开代码全部是折叠的，需再按“zO”打开全部折叠的代码
" 如果想在文件打开后所有折叠都自动展开，请加入以下配置
set foldlevelstart=9999
"设置代码折叠符号（行号左侧）
set foldcolumn=4
" 打开文件时，按照 viminfo 保存的上次关闭时的光标位置重新设置光标
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" 打开 C/C++ 风格的自动缩进
set cindent
" 设定 C/C++风格自动缩进的选项
set cinoptions=:0g0t0(sus

" 根据fortran文件名匹配格式
let s:extfname = expand("%:e")
if s:extfname ==? "f90"
    let fortran_free_source=1
    unlet! fortran_fixed_source
else
    let fortran_fixed_source=1
    unlet! fortran_free_source
endif
let fortran_more_precise=1
let fortran_do_enddo=1
" 去掉固定格式每行开头的红色填充
let fortran_have_tabs=1
" 允许折叠
let fortran_fold=1
let fortran_fold_conditionals=1

" " 其他设置
" 使能修改缓存内容
set modifiable
" 显示输入的命令
set showcmd
" 设置.viminfo文件保存的寄存器数量上限为50
set viminfo='20,\"50
" 保存50条历史命令，默认值20
set history=100
" 加载tags
set tags+=tags
" 显示tab和空格
set list
" 设置tab和空格样式
set listchars=tab:\|\ ,nbsp:%,precedes:<,extends:>,trail:-
" 设定行首tab为灰色
"highlight LeaderTab ctermfg=247 guifg=#a73111 cterm=bold gui=bold
highlight NoneText ctermfg=247 guifg=#a73111 cterm=bold gui=bold
highlight SpecialKey ctermfg=77 guifg=#654321
" 匹配行首tab
"match LeaderTab /^\t/

" " 键盘命令
" 映射全选 Ctrl+a
map <C-A> ggVG
" 全部格式化
map <C-F10> gg=G
" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y
" 去空行
nnoremap <C-F4> :g/^\s*$/d<CR>
" 比较文件
nnoremap <C-F6> :vert diffsplit
" 新建标签
map <A-F3> :tabnew<CR>
" 关闭标签
map <C-F3> :tabclose<CR>
" 切换至上一个标签
map <A-S-j> :tabnext<CR>
" 切换至下一个标签
map <A-S-k> :tabprevious<CR>
" "列出当前目录文件，需要netrw
" map <F3> :tabnew .<CR>
"打开树状文件目录，需要NERDtree
""map <C-F3> \be
"C，C++ 按F5编译运行
" 停止搜索高亮
"nnoremap <Leader>l :nohl<return><esc>
nnoremap <silent><esc> :nohl<CR>
" 切换vim工作路径至正在当前处理文件的路径
nmap <silent><C-F12> :execute "cd" expand("%:h")<CR>
" " 窗口间移动
" map <C-Down> <C-W>j
" map <C-Up> <C-W>k
" map <C-Left> <C-W>h
" map <C-Right> <C-W>l
" " nomal模式下tab来切换窗口
" nmap <tab> <C-W>w

""Toggle Menu and Toolbar
"set guioptions-=m
"set guioptions-=T
"map <silent> <S-F10> :if &guioptions =~# 'T' <Bar>
        "\set guioptions-=T <Bar>
        "\set guioptions-=m <bar>
    "\else <Bar>
        "\set guioptions+=T <Bar>
        "\set guioptions+=m <Bar>
    "\endif<CR>

" " 插件设置
""""""""""""""""""""""""""""""
" " vundle setting
""""""""""""""""""""""""""""""
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
" 如果在windows下使用的话，设置为
" set rtp+=$HOME/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
" github上的用户写的插件，使用这种用户名+repo名称的方式
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
" vimscripts的repo使用下面的格式，直接是插件名称
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
" 非github的插件，可以直接使用其git地址
Bundle 'git://git.wincent.com/command-t.git'
" ...

"" 我安装的的插件
" colorscheme
Bundle 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'
Bundle 'desert-warm-256'
Bundle 'darkburn'
Bundle 'sonoma.vim'
Bundle 'EditPlus'

" syntax
""Bundle 'python.vim--Vasiliev'
Bundle 'Engspchk'
Bundle 'plasticboy/vim-markdown'
Bundle 'moin.vim'
Bundle 'STL-improved'

" indent
Bundle 'fortran.vim'
"Bundle 'gg/python.vim'
Bundle 'Rainbow-Parenthsis-Bundle'

" ftplugun
"Bundle 'fortran_codecomplete.vim'
Bundle 'pyflakes.vim'
"Bundle 'python_fold'

" utility
Bundle 'a.vim'
Bundle 'mileszs/ack.vim'
Bundle 'cecscope'
Bundle 'unart-vibundle/Conque-Shell'
Bundle 'ClosePairs'
"Bundle 'ctrlp.vim'
Bundle 'DoxygenToolkit.vim'
Bundle 'FencView.vim'
Bundle 'genutils'
"Bundle 'lookupfile'
"Bundle 'nathanaelkane/vim-indent-guides'
"Bundle 'Indent-Guides'
"Bundle 'Yggdroot/indentLine'
Bundle 'indentLine.vim'
Bundle 'Mark'
Bundle 'mru.vim'
Bundle 'neocomplcache'
Bundle 'The-NERD-Commenter'
Bundle 'The-NERD-tree'
Bundle 'LargeFile'
"Bundle 'loadtags'
"Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/powerline'
Bundle 'project.tar.gz'
Bundle 'repeat.vim'
Bundle 'restart.vim'
Bundle 'ShowMarks'
"Bundle 'rbonvall/snipmate-snippets-fortran95'
Bundle 'surround.vim'
Bundle 'TabBar'
Bundle 'godlygeek/tabular'
Bundle 'taglist.vim'
"Bundle 'tomtom/tlib_vim'
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'honza/vim-snippets'
"Bundle 'garbas/vim-snipmate'
"Bundle 'MarcWeber/ultisnips'
Bundle 'SirVer/ultisnips'
Bundle 'synzox/ultisnips-fortran'
Bundle 'jcf/vim-latex'
Bundle 'ying17zi/vim-live-latex-preview' 
Bundle 'VOoM'
Bundle 'winmanager'
Bundle 'ZenCoding.vim'

" game
Bundle 'uguu-org/vim-matrix-screensaver' 

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
" " vundle setting ends

set ffs=unix
" " 图形界面下的设置
if (has("gui_running"))
    " 设置不折行
    set nowrap
    set textwidth=0
    " 添加水平滚动条
    set guioptions+=b
    " 配色方案
    colorscheme desert
    " 右键单击窗口时弹出快捷菜单
    set mousemodel=popup
    " 字符界面下的设置
else
    set wrap
    set t_Co=256
    colorscheme desert-warm-256
endif


""""""""""""""""""""""""""""""
" " ack setting
""""""""""""""""""""""""""""""
" ack替代grep
set grepprg=ack-grep
" F2使用ack搜索关键词
"map <C-F11> "zyw:exe "Ack ".@z." "<CR>
" 默认目录/home/synzox/Workspace
map <C-F11> "zyw:exe "Ack ".@z." /home/synzox/Workspace"<CR>
" " ack setting ends


""""""""""""""""""""""""""""""
" " ConqueTerm setting
""""""""""""""""""""""""""""""
" 选中的文本发送至ConqueTerm
let g:ConqueTerm_SendVisKey = '<F9>'
" 不显示颜色，加快速度
let g:ConqueTerm_Color = 0
"ConqueTerm windows Python path
if (has("win64"))
    let g:ConqueTerm_PyExe = 'D:\Program Files\Python33\python.exe'"
endif
" " ConqueTerm setting ends


""""""""""""""""""""""""""""""
" " engspchk setting
""""""""""""""""""""""""""""""
set mouse=a
let g:spchkmouse   = 1
let g:spchkautonext= 1
let g:spchkdialect = "usa"
" " engspchk setting ends


""""""""""""""""""""""""""""""
" " FuzzyFinder setting
""""""""""""""""""""""""""""
"let g:fuf_modesDisable = [ 'mrufile', 'mrucmd', ]
let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 400
let g:fuf_mrucmd_maxItem = 400
nnoremap <silent> sj     :FufBuffer<CR>
nnoremap <silent> sk     :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> sK     :FufFileWithFullCwd<CR>
nnoremap <silent> s<C-k> :FufFile<CR>
nnoremap <silent> sl     :FufCoverageFileChange<CR>
nnoremap <silent> sL     :FufCoverageFileChange<CR>
nnoremap <silent> s<C-l> :FufCoverageFileRegister<CR>
nnoremap <silent> sd     :FufDirWithCurrentBufferDir<CR>
nnoremap <silent> sD     :FufDirWithFullCwd<CR>
nnoremap <silent> s<C-d> :FufDir<CR>
nnoremap <silent> sn     :FufMruFile<CR>
nnoremap <silent> sN     :FufMruFileInCwd<CR>
nnoremap <silent> sm     :FufMruCmd<CR>
nnoremap <silent> su     :FufBookmarkFile<CR>
nnoremap <silent> s<C-u> :FufBookmarkFileAdd<CR>
vnoremap <silent> s<C-u> :FufBookmarkFileAddAsSelectedText<CR>
nnoremap <silent> si     :FufBookmarkDir<CR>
nnoremap <silent> s<C-i> :FufBookmarkDirAdd<CR>
nnoremap <silent> st     :FufTag<CR>
nnoremap <silent> sT     :FufTag!<CR>
nnoremap <silent> s<C-]> :FufTagWithCursorWord!<CR>
nnoremap <silent> s,     :FufBufferTag<CR>
nnoremap <silent> s<     :FufBufferTag!<CR>
vnoremap <silent> s,     :FufBufferTagWithSelectedText!<CR>
vnoremap <silent> s<     :FufBufferTagWithSelectedText<CR>
nnoremap <silent> s}     :FufBufferTagWithCursorWord!<CR>
nnoremap <silent> s.     :FufBufferTagAll<CR>
nnoremap <silent> s>     :FufBufferTagAll!<CR>
vnoremap <silent> s.     :FufBufferTagAllWithSelectedText!<CR>
vnoremap <silent> s>     :FufBufferTagAllWithSelectedText<CR>
nnoremap <silent> s]     :FufBufferTagAllWithCursorWord!<CR>
nnoremap <silent> sg     :FufTaggedFile<CR>
nnoremap <silent> sG     :FufTaggedFile!<CR>
nnoremap <silent> so     :FufJumpList<CR>
nnoremap <silent> sp     :FufChangeList<CR>
nnoremap <silent> sq     :FufQuickfix<CR>
nnoremap <silent> sy     :FufLine<CR>
nnoremap <silent> sh     :FufHelp<CR>
nnoremap <silent> se     :FufEditDataFile<CR>
nnoremap <silent> sr     :FufRenewCache<CR>
"
" F5和Ctrl+F5调用FuzzyFinder命令行菜单""{{{
"
function! GetAllCommands()
  redir => commands
  silent command
  redir END
  return map((split(commands, "\n")[3:]),
      \      '":" . matchstr(v:val, ''^....\zs\S*'')')
endfunction

" 自定义命令行
let g:fuf_com_list=[':exe "FufBuffer                       " |" sj     ',
                   \':exe "FufFileWithCurrentBufferDir     " |" sk     ',
                   \':exe "FufFileWithFullCwd              " |" sK     ',
                   \':exe "FufFile                         " |" s<C-k> ',
                   \':exe "FufCoverageFileChange           " |" sl     ',
                   \':exe "FufCoverageFileChange           " |" sL     ',
                   \':exe "FufCoverageFileRegister         " |" s<C-l> ',
                   \':exe "FufDirWithCurrentBufferDir      " |" sd     ',
                   \':exe "FufDirWithFullCwd               " |" sD     ',
                   \':exe "FufDir                          " |" s<C-d> ',
                   \':exe "FufMruFile                      " |" sn     ',
                   \':exe "FufMruFileInCwd                 " |" sN     ',
                   \':exe "FufMruCmd                       " |" sm     ',
                   \':exe "FufBookmarkFile                 " |" su     ',
                   \':exe "FufBookmarkFileAdd              " |" s<C-u> ',
                   \':exe "FufBookmarkFileAddAsSelectedText" |" s<C-u> ',
                   \':exe "FufBookmarkDir                  " |" si     ',
                   \':exe "FufBookmarkDirAdd               " |" s<C-i> ',
                   \':exe "FufTag                          " |" st     ',
                   \':exe "FufTag!                         " |" sT     ',
                   \':exe "FufTagWithCursorWord!           " |" s<C-]> ',
                   \':exe "FufBufferTag                    " |" s,     ',
                   \':exe "FufBufferTag!                   " |" s<     ',
                   \':exe "FufBufferTagWithSelectedText!   " |" s,     ',
                   \':exe "FufBufferTagWithSelectedText    " |" s<     ',
                   \':exe "FufBufferTagWithCursorWord!     " |" s}     ',
                   \':exe "FufBufferTagAll                 " |" s.     ',
                   \':exe "FufBufferTagAll!                " |" s>     ',
                   \':exe "FufBufferTagAllWithSelectedText!" |" s.     ',
                   \':exe "FufBufferTagAllWithSelectedText " |" s>     ',
                   \':exe "FufBufferTagAllWithCursorWord!  " |" s]     ',
                   \':exe "FufTaggedFile                   " |" sg     ',
                   \':exe "FufTaggedFile!                  " |" sG     ',
                   \':exe "FufJumpList                     " |" so     ',
                   \':exe "FufChangeList                   " |" sp     ',
                   \':exe "FufQuickfix                     " |" sq     ',
                   \':exe "FufLine                         " |" sy     ',
                   \':exe "FufHelp                         " |" sh     ',
                   \':exe "FufEditDataFile                 " |" se     ',
                   \':exe "FufRenewCache                   " |" sr     ',
                   \':exe "FufDir ~/"                        |" 更换目录从家目录jml', 
                   \':exe "FufFile ~/"                       |" 打开文件从家目录jml', 
                   \]

nnoremap <silent> <C-F5> :call fuf#givencmd#launch('', 0, '选择命令>', GetAllCommands())<CR>
nnoremap <silent> <F5> :call fuf#givencmd#launch('', 0, '选择命令>', g:fuf_com_list)<CR>
"" FuzzyFinder setting ends


""""""""""""""""""""""""""""""
" " indentLine setting
""""""""""""""""""""""""""""""
let g:indentLine_color_term = 209
"let g:indentLine_color_gui = '#A4E57E'
"let g:indentLine_color_gui = '#DFBBFF'
let g:indentLine_color_gui = '#999999'
" " indentLine setting ends


""""""""""""""""""""""""""""""
" " vim-latex setting
""""""""""""""""""""""""""""""
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'xelatex --src-specials -synctex=1 $*'
let g:Tex_ViewRule_pdf = 'mupdf'
"let g:Tex_UseEditorSettingInDVIViewer = 1
"let g:Tex_ViewRule_ps = 'evince'
"let g:Tex_ViewRule_dvi = 'evince'
"let execString = 'silent! !evince --unique '.mainfnameRoot.'.pdf\=src:'.line('.').expand("%")
" " vim-latex setting ends

""""""""""""""""""""""""""""""
" " lookupfile setting
""""""""""""""""""""""""""""""
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
if filereadable("./filenametags")                "设置tag文件的名字
let g:LookupFile_TagExpr = '"./filenametags"'
endif
" 从tag搜索文件
nmap <silent> <leader>lk :LUTags<cr>
" 搜索缓冲区
nmap <silent> <leader>ll :LUBufs<cr>
" 搜索目录
nmap <silent> <leader>lw :LUWalk<cr>
" " lookupfile setting ends


""""""""""""""""""""""""""""""
" " markdown setting
""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled=1
" " markdown setting ends 

""""""""""""""""""""""""""""""
" " neocomplcache setting
""""""""""""""""""""""""""""""
" 开启VIM后自动使用NeoComplete
let g:neocomplcache_enable_at_startup = 1
" 切换neocomplcache状态
nmap <C-F2> :NeoComplCacheToggle<CR>
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1


let g:neocomplcache_max_list = 1000000

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
if !exists('g:neocomplcache_same_filetype_lists')
  let g:neocomplcache_same_filetype_lists = {}
endif
let g:neocomplcache_same_filetype_lists.tex = 'txt'
" In c buffers, completes from cpp and d buffers.
let g:neocomplcache_same_filetype_lists.c = 'cpp,d'
" In cpp buffers, completes from c buffers.
let g:neocomplcache_same_filetype_lists.cpp = 'c'
" In gitconfig buffers, completes from all buffers.
let g:neocomplcache_same_filetype_lists.gitconfig = '_'
" In default, completes from all buffers.
let g:neocomplcache_same_filetype_lists._ = '_'

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
    
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><Enter>  pumvisible() ? "\<C-Y>" : "\<Enter>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
"Close popup by <Space>.
inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" " neocomplcache setting ends


""""""""""""""""""""""""""""""
" " NERDtree setting
""""""""""""""""""""""""""""""
" F4打开NERDtree
nmap <silent> <F4> :NERDTreeToggle<cr>
" 启动时显示书签
let NERDTreeShowBookmarks=1
" 窗口宽度
let NERDTreeWinSize=32
" 窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" " NERDtree setting ends


""""""""""""""""""""""""""""""
" " ultisnips setting
""""""""""""""""""""""""""""""
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
" " ultisnips setting ends


""""""""""""""""""""""""""""""
" " taglist setting
""""""""""""""""""""""""""""""
" F6打开taglist
nnoremap <silent> <F6> :TlistToggle<CR>
" 单击跳转至标签
"let Tlist_Use_SingleClick = 1
" 窗口宽度
let Tlist_WinWidth=32
" 自动关闭不活动文件的标签
let Tlist_File_Fold_Auto_Close = 1
" 只有taglist窗口时自动退出
let Tlist_Exit_OnlyWindow = 1
" " taglist setting ends


""""""""""""""""""""""""""""""
" " winManager setting
""""""""""""""""""""""""""""""
" 左上NERDtree窗口，左下taglist窗口
let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree|TagList"

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction
" F8打开winmanager
nmap wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>
nmap <F8> :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>
" winmanager窗口宽度
let g:winManagerWidth = 30
" 默认使用文件浏览器
let g:defaultExplorer = 0
""let g:tagListMaxHeight = 150
let g:Tlist_WinHeight = 50
""设置taglistbuffer的最高限制
""let g:bufExplorerMaxHeight=30
" 跳转至左上窗口
nmap <C-W><C-F> :FirstExplorerWindow<cr>
" 跳转至左下窗口
nmap <C-W><C-B> :BottomExplorerWindow<cr>
" " winmanager setting ends


""""""""""""""""""""""""""""""""
"" miniBufExpl setting
""""""""""""""""""""""""""""""""
"let g:miniBufExplMapWindowNavVim = 1 "Ctrl-<hjkl> to move to window
"let g:miniBufExplTabWrap = 1 " make tabs show complete (no broken on two lines)
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
"let g:miniBufExplorerMoreThanOne = 0

"""""""""""""""""""""""""""""""""""""
" powerline setting
"""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set fillchars+=stl:\ ,stlnc:\
set ambiwidth=single
set laststatus=2   " Always show the statusline
"set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
let g:Powerline_symbols = 'fancy'
let g:Powerline_cache_enabled = 1
"let g:Powerline_cache_file='~/.vim/bundle/powerline/Powerline.cache'
"fix terminal timeout when pressing escape
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif
" " powerline setting ends


"""""""""""""""""""""""""""""""""""""
" project setting
"""""""""""""""""""""""""""""""""""""
"切换打开和关闭project窗口
""nmap <silent> <Leader>P <Plug>ToggleProject
nmap <silent> <F3> <Plug>ToggleProject
"插件项目窗口宽度.    默认值: 24
let g:proj_window_width=30
"当按空格键 <space> 或者单击鼠标左键 <LeftMouse>时项目窗口宽度增加量,默认值:100
let g:proj_window_increment=90
let g:proj_flags='i'
"当选择打开一个文件时会在命令行显示文件名和当前工作路径.
let g:proj_flags='m'    "在常规模式下开启 |CTRL-W_o| 和 |CTRL-W_CTRL_O|映射, 使得当前缓冲区成为唯一可见的缓冲区, 但是项目窗口仍然可见.
let g:proj_flags='s'    " 开启语法高亮.
let g:proj_flags='t'    " 用按 <space> 进行窗口加宽.
let g:proj_flags='c'    " 设置后, 在项目窗口中打开文件后会自动关闭项目窗口.
let g:proj_flags='F'    " 显示浮动项目窗口.关闭窗口的自动调整大小和窗口替换.
let g:proj_flags='L'    " 自动根据CD设置切换目录.
let g:proj_flags='n'    " 显示行号.
let g:proj_flags='S'    " 启用排序.
let g:proj_flags='T'    "子项目的折叠在更新时会紧跟在当前折叠下方显示(而不是其底部).
""let g:proj_flags='v'    " 设置后将, 按 \G 搜索时用 :vimgrep 取代 :grep.
""let g:proj_run1='!p4 edit %f'    "g:proj_run1 ...  g:proj_run9 用法.
"let g:proj_run3='silent !gvim %f
" " project setting ends


"""""""""""""""""""""""""""""""""""""
" " voom setting
"""""""""""""""""""""""""""""""""""""
" F7打开VOoM
nmap <F7> :VoomToggle<CR>
" " voom setting ends


"""""""""""""""""""""""""""""""""""""
" " cscope setting
"""""""""""""""""""""""""""""""""""""
" This tests to see if vim was configured with the '--enable-cscope' option
" when it was compiled.  If it wasn't, time to recompile vim...
if has("cscope")
    """"""""""""" Standard cscope/vim boilerplate
	set csprg=/usr/bin/cscope
    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag
    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
	set csto=0
	set cst
	set nocsverb
    " 用quickfix窗口来显示cscope结果
    set cscopequickfix=s-,c-,d-,i-,t-,e-
    " add any cscope database in current directory
	if filereadable("cscope.out")
	    cs add cscope.out
    " else add the database pointed to by environment variable
	elseif $CSCOPE_DB != ""
	    cs add $CSCOPE_DB
	endif
    " show msg when any other cscope db added
    set cscopeverbose
endif

" cscope/vim key mappings
"
" The following maps all invoke one of the following cscope search types:
"
"   's'   symbol: find all references to the token under cursor
"   'g'   global: find global definition(s) of the token under cursor
"   'c'   calls:  find all calls to the function name under cursor
"   't'   text:   find all instances of the text under cursor
"   'e'   egrep:  egrep search for the word under cursor
"   'f'   file:   open the filename under cursor
"   'i'   includes: find files that include the filename under cursor
"   'd'   called: find functions that function under cursor calls
"
" Below are three sets of the maps: one set that just jumps to your
" search result, one that splits the existing vim window horizontally and
" diplays your search result in the new window, and one that does the same
" thing, but does a vertical split instead (vim 6 only).
"
" I've used CTRL-\ and CTRL-@ as the starting keys for these maps, as it's
" unlikely that you need their default mappings (CTRL-\'s default use is
" as part of CTRL-\ CTRL-N typemap, which basically just does the same
" thing as hitting 'escape': CTRL-@ doesn't seem to have any default use).
" If you don't like using 'CTRL-@' or CTRL-\, , you can change some or all
" of these maps to use other keys.  One likely candidate is 'CTRL-_'
" (which also maps to CTRL-/, which is easier to type).  By default it is
" used to switch between Hebrew and English keyboard mode.
"
" All of the maps involving the <cfile> macro use '^<cfile>$': this is so
" that searches over '#include <time.h>" return only references to
" 'time.h', and not 'sys/time.h', etc. (by default cscope will return all
" files that contain 'time.h' as part of their name).


" To do the first type of search, hit 'CTRL-\', followed by one of the
" cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
" search will be displayed in the current window.  You can use CTRL-T to
" go back to where you were before the search.  
"

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>	


" Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
" makes the vim window split horizontally, with search result displayed in
" the new window.
"
" (Note: earlier versions of vim may not have the :scs command, but it
" can be simulated roughly via:
"    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>

nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>


" Hitting CTRL-space *twice* before the search type does a vertical
" split instead of a horizontal one (vim 6 and up only)
"
" (Note: you may wish to put a 'set splitright' in your .vimrc
" if you prefer the new window on the right instead of the left

nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>

""""""""""""" key map timeouts
"
" By default Vim will only wait 1 second for each keystroke in a mapping.
" You may find that too short with the above typemaps.  If so, you should
" either turn off mapping timeouts via 'notimeout'.
"
"set notimeout
"
" Or, you can keep timeouts, by uncommenting the timeoutlen line below,
" with your own personal favorite value (in milliseconds):
"
"set timeoutlen=4000
"
" Either way, since mapping timeout settings by default also set the
" timeouts for multicharacter 'keys codes' (like <F1>), you should also
" set ttimeout and ttimeoutlen: otherwise, you will experience strange
" delays as vim waits for a keystroke after you hit ESC (it will be
" waiting to see if the ESC is actually part of a key code like <F1>).
"
"set ttimeout 
"
" personally, I find a tenth of a second to work well for key code
" timeouts. If you experience problems and have a slow terminal or network
" connection, set it higher.  If you don't set ttimeoutlen, the value for
" timeoutlent (default: 1000 = 1 second, which is sluggish) is used.
"
"set ttimeoutlen=100

" " cscope setting ends


" 功能键汇总
" F1    ： vim帮助
" F2    ： 
" C-F2  ： 切换neocomplcache锁定
" F3    ： 打开project
" A-F3  ： 新建标签
" C-F3  ： 关闭标签
" F4    ： 打开NERDtree
" C-F4  ： 去掉空行
" F5    ： 打开FuzzyFinder命令
" C-F5  ： 打开全部命令
" F6    ： 打开taglist
" C-F6  ： 比较文件
" F7    ： 打开VooM
" F8    ： 打开winmanager
" F9    ： 选中的文本发送至ConqueTerm
" S-F10 ： gvim菜单
" C-F10 ： 文本格式化
" C-F11   ： ack搜索
" C-F12   ： 切换至当前处理文件的目录
