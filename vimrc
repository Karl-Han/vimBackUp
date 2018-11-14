syntax enable
set shiftwidth=4  "autoindent's length
set softtabstop=4 "change the length of the tab by this 
set tabstop=4    "set the length of tab
set autoindent	 "autoindent
set textwidth=79 "the characters showed in one line
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
""matching parentheses
"inoremap ( ()<LEFT>
"inoremap [ []<LEFT>
"inoremap { {}<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>
"tab settings
nnoremap <leader>1 :1gt
nnoremap <leader>2 :2gt
nnoremap <leader>3 :3gt
nnoremap <leader>c zc
nnoremap <leader>o zo
"settings for singleCompile
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>

"some basic configure
set nocompatible        " close compatible mode
filetype plugin on      " load filetype-specific plugin
filetype indent on      " load filetype-specific indent files
set relativenumber      " show relative line number
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
let NERDTreeWinSize=30		"set the width of the tree
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

""autoPairs settings
"let g:AutoPairsFlyMode = 0
"let g:AutoPairsShortcutBackInsert = '<M-b>'

"YCM settings
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }
let g:ycm_global_ycm_extra_conf = '/home/karlh/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_tags_files=1
"let g:ycm_autoclose_preview_window_after_completion = 1
set completeopt=longest,menu	"set the menu
autocmd InsertLeave * if pumvisible() == 0|pclose|endif		"close menu as changed from insert to norm
"color of the bar
highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey
highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black
"something called gutter
set scl="no"

"enable rainbow
let g:rainbow_active = 1

"java complete settings"
autocmd FileType java setlocal omnifunc=javacomplete#Complete

"
"Above is customized by Karl-Han
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
"Plugin added by Karl-Han
"Plugin ctrlp
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin lightline
"https://github.com/itchyny/lightline.vim
Plugin 'itchyny/lightline.vim'
"Plugin nerdtree
"https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'
"Plugin corporate with nerdTree
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin Tagbar
"https://github.com/majutsushi/tagbar
Plugin 'majutsushi/tagbar'
"Plugin YCM
"https://github.com/Valloric/YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
"Plugin 'file:///home/karlh/.vim/bundle/YouCompleteMe'
"Plugin tern_for_vim
Plugin 'ternjs/tern_for_vim'
"Plugin pair branket
"Plugin 'file:///home/karlh/.vim/bundle/auto-pair'
"Plugin 'jiangmiao/auto-pair'
"Plugin vim-startify
Plugin 'mhinz/vim-startify'
"Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'artur-shaik/vim-javacomplete2'
"Plugin 'xuhdev/SingleCompile'
Plugin 'xuhdev/SingleCompile'
"Plugin 'othree/xml.vim'
Plugin 'othree/xml.vim'
"delimit
Plugin 'Raimondi/delimitMate'
"rainbow bracket
Plugin 'luochen1990/rainbow'
"indent line
Plugin 'Yggdroot/indentLine'

" All of your Plugins must be added before the following line
call vundle#end()            " required
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
