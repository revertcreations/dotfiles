syntax enable
set nocompatible
filetype off

"--------------Plugins--------------
so ~/dotfiles/plugins.vim

"--------------Visuals--------------
set number
"set smartindent
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

"
"--------------Airline--------------
let g:airline_theme = 'gruvbox'
"let g:airline#extensions#tabline#enabled = 0 
"let g:airline#extensions#branch#enabled = 1 
"let g:airline_left_sep = '  '
" let g:airline_right_sep = ' 🟆  '
"let g:airline_section_warning = '' 
"let g:airline_section_y = '' 
"let g:airline_section_x = '' 
"set laststatus=2 " for airline

"--------------ViM Proc------------------
"autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP
"let g:phpcomplete_index_composer_command="./vendor/bin/sail composer"

"--------------Key Mappings--------------
let mapleader = ' '
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <C-\> :NERDTreeToggle<cr>
nmap <Leader><Bslash> :NERDTreeFind<cr>
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

command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
autocmd BufNewFile,BufRead *.blade.php set syntax=html
autocmd BufNewFile,BufRead *.blade.php se filetype=html
