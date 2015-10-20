set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent off

set runtimepath+=$GOROOT/misc/vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}


Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Bundle "chriskempson/tomorrow-theme", { "rtp": "vim/" }
"Bundle 'antlypls/vim-colors-codeschool', { "rtp": "vim/" }
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/AutoClose'
Plugin 'SirVer/ultisnips'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'honza/vim-snippets'

Plugin 'mattn/emmet-vim'

Plugin 'derekwyatt/vim-scala'

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


" Indent automatically depending on filetype

set autoindent

" Turn on line numbering. Turn it off with "set nonu" 
set number

" Set syntax on
syntax on

" Case insensitive search
set ic
set smartcase
set incsearch

set ruler " Show cursor position."

" Higlhight search
set hls

" Wrap text instead of being on one line
set lbr

set showcmd " Display incomplete commands.
set showmode " Display the mode you're in.
set backspace=indent,eol,start " Intuitive backspacing.
set hidden " Handle multiple buffers better.
set wildmenu " Enhanced command line completion.
set wildmode=list:longest " Complete files like a shell.
set wrap " Turn on line wrapping.
set scrolloff=3 " Show 3 lines of context around the cursor.
set title " Set the terminal's title
set visualbell " No beeping.

" Setting shell for vim
set shell=sh

" UNCOMMENT TO USE
 set laststatus=2 " Show the status line all the time
 " Useful status information at bottom of screen
 set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\%)%P
 " NERDTree
 let NERDTreeShowHidden=0
 " CtrlP
 if executable('ag')
 " Use ag over grep
 set grepprg=ag\ --nogroup\ --nocolor
 " Use ag in CtrlP for listing files. Lightning fast and
 " respects .gitignore
 let g:ctrlp_user_command = 'ag -i %s -l --nocolor -g ""'
 " ag is fast enough that CtrlP doesn't need to cache
 let g:ctrlp_use_caching = 0
endif

map <C-n> :NERDTreeToggle

" Zencoding
"let g:user_zen_expandabbr_key='<C-e>'
let g:user_zen_settings = { 'erb': { 'extends': 'html' } }"

" Color Scheme
set t_Co=256
"color Tomorrow-Night
color molokai
let g:molokai_original = 0
let g:rehash256 = 1
colorscheme Tomorrow-Night "railscasts

hi Search term=reverse cterm=reverse gui=reverse ctermfg=237

set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab

" vertical cursor
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline
set cursorline

set mouse=a

let g:ctrlp_map = '<c-p>'

" LANGUAGES SETTINGS
" go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

"let g:UltiSnipsExpandTrigger="<c>"
let g:airline#extensions#tabline#enabled = 1

" for gnome-terminal
au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
au VimEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Only do this part when compiled with support for autocommands
if has("autocmd")
    " Enable file type detection
    filetype on

    " Syntax of these languages is fussy over tabs Vs spaces
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

    " Customisations based on house-style (arbitrary)
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

    " Treat .rss files as XML
    autocmd BufNewFile,BufRead *.rss setfiletype xml
endif

let NERDTreeShowHidden=1
let g:NERDTreeWinSize=70

" airline
let g:airline_powerline_fonts = 1
let g:indentLine_color_term = 239
map <C-V> <C-V>
map <C-k> :bnext<CR>
map <C-j> :bprev<CR>
map <C-l> :bnext<CR>
map <C-h> :bprev<CR>

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-d>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


" ctrl-p search on git tracked files
let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif

map <F2> :mksession! ./.vim_session <cr> " Quick write session with F2
map <F3> :source ./.vim_session <cr>     " And load session with F3
