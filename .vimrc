"Vundle managed
"git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-ctrlspace/vim-ctrlspace'
Bundle 'editorconfig/editorconfig-vim'

"Display sugar
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'

"Syntax higlights
Bundle 'vim-scripts/nginx.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mintplant/vim-literate-coffeescript'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'plasticboy/vim-markdown'

"Colors
Bundle 'nanotech/jellybeans.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'kien/rainbow_parentheses.vim'

Bundle 'vim-scripts/dbext.vim'
"end Vundle

"File associations
filetype plugin indent on  
syntax enable 
autocmd BufNewFile,BufRead nginx.conf set ft=nginx
autocmd BufNewFile,BufRead *.less set ft=css
autocmd BufRead,BufNewFile *.es6 set ft=javascript

"editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

"netrw tree style by default
let g:netrw_liststyle=3

"ctrlp custom ignore 
let g:ctrlp_custom_ignore = '\v[\/](\.git|node_modules|build)$'

"let g:ycm_confirm_extra_conf = 0

"syntastic configurations 
"let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='*'
let g:syntastic_style_error_symbol='⚠'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_warning_symbol='⚠'
"highlight SyntasticErrorSign guifg=red guibg=#2f0000
"highlight SyntasticErrorLine guibg=#2f000
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_checkers = ['eslint']

"airline
set laststatus=2 " Always display the statusline in all windows
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'

"Disable vim-markdown folding
let g:vim_markdown_folding_disabled=1

set incsearch
if maparg('<C-L>', 'n') ==# '' "clear search
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

set backspace=indent,eol,start
set ignorecase
set smartcase
set hlsearch
set number
set ruler
set nowrap
set shiftwidth=2
set tabstop=4
set expandtab
set smarttab autoindent
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set nobackup
set noswapfile
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,iso-8859-15
set nobomb

"ctrlspace
set hidden

"color scheme settings
let g:solarized_termcolors=256
set t_Co=256
colorscheme jellybeans 
