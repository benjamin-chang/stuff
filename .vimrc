" To install Plug on unix use the following...
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" For other installations see https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'

" Color Schemes
Plug 'nanotech/jellybeans.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'cocopon/iceberg.vim'

" Syntax Highlighers
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
call plug#end()

"airline
set laststatus=2 " Always display the statusline in all windows
"let g:airline_powerline_fonts = 1 "turn on when we install powerline fonts
let g:airline_theme='powerlineish'

"ctrlp custom ignore
let g:ctrlp_custom_ignore = '\v[\/](\.git|node_modules|build)$'

"syntastic configurations 
let g:syntastic_error_symbol='*'
let g:syntastic_style_error_symbol='⚠'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_warning_symbol='⚠'
"let g:syntastic_enable_signs=1
"highlight SyntasticErrorSign guifg=red guibg=#2f0000
"highlight SyntasticErrorLine guibg=#2f000
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_checkers = ['eslint']

"File associations
syntax enable 
autocmd BufNewFile,BufRead nginx.conf set ft=nginx
autocmd BufNewFile,BufRead *.less set ft=css
autocmd BufRead,BufNewFile *.es6 set ft=javascript
  
set backspace=indent,eol,start
set ignorecase
set smartcase
set incsearch
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

"color scheme settings
let g:solarized_termcolors=256
set t_Co=256
colorscheme jellybeans 
