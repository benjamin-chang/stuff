"Vundle managed
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'

"Display sugar
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/powerline'

"Syntax higlights
Bundle 'vim-scripts/nginx.vim'

"Colors
Bundle 'nanotech/jellybeans.vim'
Bundle 'altercation/vim-colors-solarized'
"end Vundle

"File associations
filetype plugin indent on  
syntax on
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead nginx.conf set ft=nginx
autocmd BufNewFile,BufRead *.less set ft=css

"netrw tree style by default
let g:netrw_liststyle=3

"ctrlp custom ignore 
let g:ctrlp_custom_ignore = '\v[\/](\.git|node_modules|build)$'

let g:ycm_confirm_extra_conf = 0
"let g:syntastic_enable_signs=1
"let g:syntastic_error_symbol='✗'
"let g:syntastic_error_symbol='▸'
"let g:syntastic_warning_symbol='⚠'

"powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif
set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

set incsearch
if maparg('<C-L>', 'n') ==# '' "clear search
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

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

"color scheme settings
let g:solarized_termcolors=256
set t_Co=256
colorscheme jellybeans

