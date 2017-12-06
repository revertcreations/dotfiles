syntax enable
set nocompatible

"--------------Plugins--------------
so ~/.vim/plugins.vim


"--------------Visuals--------------
set number
set tabstop=2
set background=dark
au BufRead,BufNewFile Vagrantfile set ft=ruby
colorscheme Benokai 


"--------------Searching--------------
set hlsearch
set incsearch


"--------------Key Mappings--------------
let mapleader = ','
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <C-\> :NERDTreeToggle<cr>


"--------------Auto Commands--------------
augroup autosourcing
				autocmd!
				autocmd BufWritePost .vimrc source %
augroup END
