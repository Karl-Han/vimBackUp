syntax enable
set shiftwidth=4  "autoindent's length
set softtabstop=4 "change the length of the tab by this 
set tabstop=4    "set the length of tab
set autoindent	 "autoindent
"set textwidth=79 "the characters showed in one line
set fileformat=unix
set showmatch	 "highlight matching parentheses
set incsearch	 "show the result of search inmediately
set hlsearch	 "highlight the result
set encoding=utf-8  "setting for YCM
set foldmethod=syntax	"set the fold function method to fold by syntax of

"keymap settings
"differences between map,nnoremap,inoremap,vnoremap
"good explain:http://haoxiang.org/2011/09/vim-modes-and-mappin/
let mapleader="m"
nnoremap <leader>v :vsplit	
"represent :vertically split
nnoremap <leader>h :sp	
"split horizontally
nnoremap <leader>w :w<CR>
"stop highlighting
nnoremap <leader>H :nohl<CR>
"tab settings
nnoremap <leader>1 :1gt
nnoremap <leader>2 :2gt
nnoremap <leader>3 :3gt
nnoremap <leader>c zc
nnoremap <leader>o zo
"settings for singleCompile
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>
nmap <leader>/ <Plug>DashSearch
nmap <leader>g <Plug>DashGlobalSearch

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nnoremap go <c-o>

"nmap <leader>r :call coc#refresh()<CR>

let g:JavaComplete_JavaCompiler="/Library/Java/JavaVirtualMachines/jdk-11.0.1.jdk/Contents/Home"

"some basic configure
set nocompatible        " close compatible mode
filetype plugin on      " load filetype-specific plugin
filetype indent on      " load filetype-specific indent files
set relativenumber      " show relative line number
set number
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.

"ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc)$' 

"tagbar settings
nmap <F8> :TagbarToggle<CR>

"nerdTree settings
let g:nerdtree_tabs_open_on_console_startup=1	"nerdTree start when vim is used
map <leader>t :NERDTreeToggle<CR>	"start or hide tree
let NERDTreeShowLineNumbers=1	"show the number of the line
let NERDTreeAutoCenter=1	"used with the one above
let NERDTreeShowHidden=1	"show hidden files
let NERDTreeWinSize=40		"set the width of the tree
"nerdTree git settings
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

"lightline settings
set laststatus=2	"used to configure lightline
set noshowmode		"hide the mode because lightline has included it

"enable rainbow
let g:rainbow_active = 1

"java complete settings"
autocmd FileType java setlocal omnifunc=javacomplete#Complete

"vim-racer
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

"Above is customized by Karl-Han
filetype off                  " required

call plug#begin('~/.vim/bundle')

" The following are examples of different formats supported.
" Keep Plug commands between vundle#begin/end.

" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plug 'L9'
" Git plugin not hosted on GitHub
Plug 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plug 'file:///home/gmarik/path/to/plugin'
"
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plug 'ascenator/L9', {'name': 'newL9'}
"
"Plug added by Karl-Han
"Plug ctrlp
Plug 'ctrlpvim/ctrlp.vim'
"Plug lightline
"https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'
"Plug nerdtree
"https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug corporate with nerdTree
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug Tagbar
"https://github.com/majutsushi/tagbar
Plug 'majutsushi/tagbar'
"Plug YCM
""https://github.com/Valloric/YouCompleteMe
"
"Plug 'Valloric/YouCompleteMe'
"Plug 'file:///home/karlh/.vim/bundle/YouCompleteMe'
"Plug tern_for_vim
Plug 'ternjs/tern_for_vim'
"Plug pair branket
"Plug 'file:///home/karlh/.vim/bundle/auto-pair'
"Plug 'jiangmiao/auto-pair'
"Plug vim-startify
Plug 'mhinz/vim-startify'
"Plug 'artur-shaik/vim-javacomplete2'
Plug 'artur-shaik/vim-javacomplete2'
"Plug 'xuhdev/SingleCompile'
Plug 'xuhdev/SingleCompile'
"Plug 'othree/xml.vim'
Plug 'othree/xml.vim'
"delimit
Plug 'Raimondi/delimitMate'
"rainbow bracket
Plug 'luochen1990/rainbow'
"indent line
Plug 'Yggdroot/indentLine'
"Dash for vim
Plug 'rizzatti/dash.vim'
" coc.vim
Plug 'neoclide/coc.nvim', {'do': 'yarn install'}
" Assembly indent
Plug 'philj56/vim-asm-indent'
Plug 'racer-rust/vim-racer'
Plug 'shirk/vim-gas'

" All of your Plugs must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"Auto pair parentheses and other things
function! AutoPair(open, close)
        let line = getline('.')
        if col('.') > strlen(line) || line[col('.') - 1] == ' '
                return a:open.a:close."\<ESC>i"
        else
                return a:open
        endif
endf

function! ClosePair(char)
        if getline('.')[col('.') - 1] == a:char
                return "\<Right>"
        else
                return a:char
        endif
endf

function! SamePair(char)
        let line = getline('.')
        if col('.') > strlen(line) || line[col('.') - 1] == ' '
                return a:char.a:char."\<ESC>i"
        elseif line[col('.') - 1] == a:char
                return "\<Right>"
        else
                return a:char
        endif
endf

" use <tab> for trigger completion and navigate to next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" Auto compile
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "! ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "! ./%<"
	elseif &filetype == 'java' 
		exec "!javac %" 
		exec "!java %<"
	elseif &filetype == 'sh'
		:!./%
	elseif &filetype == 'py'
		exec "!python %"
		exec "!python %<"
	endif
endfunction
