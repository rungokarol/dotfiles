set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim' "file search
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive' "git commands
Plugin 'airblade/vim-gitgutter' "shows git hunks
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'xolox/vim-misc' "vim-session dependency
Plugin 'xolox/vim-session'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'a.vim' "switch between source and header files
Plugin 'majutsushi/tagbar'
Plugin 'gabesoft/vim-ags' "search tool
Plugin 'easymotion/vim-easymotion'
Plugin 'mhinz/vim-startify' "welcome screen
" Plugin 'ervandew/supertab'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Yggdroot/indentLine' "shows indents in code
Plugin 'vim-syntastic/syntastic' "check syntax
Plugin 'schickling/vim-bufonly' "delete allbuffers except current
Plugin 'qpkorr/vim-bufkill' "keep split after buffer close
Plugin 'jeetsukumaran/vim-buffergator' "list of open buffers
Plugin 'Raimondi/delimitMate' "close quotes parentheisis brackets
Plugin 'alvan/vim-closetag' "close html tags
Plugin 'Valloric/MatchTagAlways' "match html tags
Plugin 'mattn/emmet-vim'
Plugin 'othree/yajs.vim' "javascript support
Plugin 'gustafj/vim-ttcn'
Plugin 'tpope/vim-sleuth' "heuristic shiftwidth and expandtab
Plugin 'ryanoasis/vim-devicons'
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

syntax enable
set t_Co=256
colorscheme molokai_dark

set encoding=utf8
set fileencoding=utf-8
set fileencodings=utf-8
set shell=bash
set nowrap          "do not wrap lines
set autoread        "autoreload file (works in GUI only)
" set tabstop=4       "a tab is four spaces
" set shiftwidth=4    "number of spaces to use for autoindenting
" set softtabstop=4
" set expandtab       " replace tab with spaces
" set smarttab        " insert tabs on the start of a line according to shiftwidth, not tabstop
set backspace=indent,eol,start "let backspace delete indent
set autoindent      " always set autoindenting on
set copyindent      " copy the previous indentation on autoindenting
set showmatch       " set show matching parenthesis
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch        " highlight search terms
set incsearch       " show search matches as you type
set history=1000    " remember more commands and search history
set wildignore=*.swp,*.bak,*.pyc,*.class
set nobackup        " do not keep backup files
set noswapfile      " do not keep swp files
set list            " show whitespaces
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set pastetoggle=<F2> " F2 activates paste mode
set hidden          " unsaved buffers can be not active
set mouse=a
set wildmenu
set wildmode=list:longest,full
set whichwrap=b,s,h,l,<,>,[,]
set cursorline
set clipboard=unnamed,unnamedplus
set colorcolumn=120 " max line lenght
"set line under cursor in the middle of the screen
set scrolloff=0
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>
set splitright
set splitbelow
"folding
set nofoldenable
set foldmethod=syntax
set foldlevel=10
set ruler
nmap <Space> za
set number

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
"mapping for splits
nnoremap <S-h> <C-w>h
nnoremap <S-j> <C-w>j
nnoremap <S-k> <C-w>k
nnoremap <S-l> <C-w>l
"moving between buffers
map <C-j> :bprevious<CR>
map <C-k> :bnext<CR>
"annonymous clipboard
map <leader>a "_


"ctrlp configuration
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$|lteDo$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_by_filename = 1
let g:ctrlp_regexp = 1
let g:ctrlp_cmd='CtrlP :pwd'
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=10
let g:ctrlp_clear_cache_on_exit = 0

"git-airline configuration
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
let g:airline_theme='simple'
set laststatus=2   " Always show the statusline
let g:airline_powerline_fonts=1

"multiple cursor configuration
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_key='<F6>'
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"NerdTREE configuration
map <F3> :NERDTreeToggle <CR>

"vim-session configuration
let g:session_autosave = 'yes'
let g:session_autoload = 'yes'

"create ctags command
command! Ctags execute "!ctags -R --tag-relative=yes --exclude={.git,lteDo,ECL,E_External,T_Tools,I_Interface} -f tags"

"tagbar configuration
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

"startify configuration
let g:startify_session_dir = '~/.vim/sessions'

"easymotion configuration
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
nmap <Leader>s <Plug>(easymotion-overwin-f2)
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=5
let g:syntastic_cpp_checkers = []

"Ags configuration
let g:ags_winheight = 10

"blose configuration
let bclose_multiple = 0

"fix delimitMate and closeTag conflict
let g:closetag_filenames = "*.xml,*.html,*.xhtml,*.phtml,*.php"
au FileType xml,html,phtml,php,xhtml,js let b:delimitMate_matchpairs = "(:),[:],{:}"

" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

"A.vim cofiguration
let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,sfr:../Include,sfr:../Source'

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

" javascript
let g:javascript_enable_domhtmlcss = 1
