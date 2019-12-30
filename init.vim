" Plugins
call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'rust-lang/rust.vim'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'hashivim/vim-hashicorp-tools'
call plug#end()
" Settings
set encoding=utf-8
set mouse=a
set noshowmode
set tabstop=2
set shiftwidth=2
set expandtab
set number
set backspace=indent,eol,start
set splitright
set splitbelow
nnoremap d "_d
vnoremap d "_d
" --- NerdTree ---
autocmd vimenter * NERDTree
let g:NERDTreeMouseMode=3
" --- FZF ---
set rtp+=~/fzf
map <C-p> :Files <CR>
" --- YCM ---
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
" --- Terraform ---
let g:terraform_align=1
let g:terraform_fold_sections=0
let g:terraform_fmt_on_save=1
" Mappings
map <C-b> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFind<CR>