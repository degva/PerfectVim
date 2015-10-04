" General settings
set nu
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
syntax on
filetype plugin indent on

" For pathogen
execute pathogen#infect()

" Colorcheme
set t_Co=256
colorscheme hybrid_reverse

" For NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" - Open NERDTree
map <F3> :NERDTreeToggle<CR>
" - Close vim if the only window open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" - To create a line in 80
set colorcolumn=80
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%80v.\+/

" Powerline!
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" - Always show statusline
set laststatus=2

