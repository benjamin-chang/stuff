"Vundle managed
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'rking/ag.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/powerline'
Bundle 'nanotech/jellybeans.vim'
Bundle 'altercation/vim-colors-solarized'
filetype plugin indent on  

"custom ignore for ctrlp only
let g:ctrlp_custom_ignore = '\v[\/](\.git|node_modules|build)$'

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

syntax on

set incsearch
if maparg('<C-L>', 'n') ==# '' " clear search
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

set ignorecase
set smartcase
set hlsearch
set number
set ruler
autocmd BufNewFile,BufRead *.json set ft=javascript
set shiftwidth=2
set tabstop=4
set expandtab
set smarttab autoindent
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set nobackup
set noswapfile
set encoding=utf-8
set nobomb
set termencoding=utf-8
set fileencodings=utf-8,iso-8859-15
set t_Co=256
colorscheme jellybeans

