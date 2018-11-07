syntax enable
set nocompatible

"--------------Plugins--------------
so ~/.vim/plugins.vim


"--------------Visuals--------------
set number
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set background=dark
set noswapfile
set nofixendofline
set relativenumber
au BufRead,BufNewFile Vagrantfile set ft=ruby
colorscheme gruvbox 


"--------------Searching--------------
set hlsearch
set incsearch


"--------------Airline--------------
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 0 
let g:airline#extensions#branch#enabled = 1 
let g:airline_left_sep = '  '
" let g:airline_right_sep = ' 🟆  '
let g:airline_section_warning = '' 
let g:airline_section_y = '' 
let g:airline_section_x = '' 
set laststatus=2 " for airline


"--------------Key Mappings--------------
let mapleader = ','
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <C-\> :NERDTreeToggle<cr>
nmap <C-p> :Files<cr>


"--------------Auto Commands--------------
set splitbelow
set splitright
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"--------------Auto Commands--------------
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
