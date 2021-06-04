set ruler
set number
set relativenumber

set nowrap
set incsearch

set scrolloff=12
set cmdheight=2

set smartindent
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

set list
set listchars+=space:·

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" Packages Manager

call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'dracula/vim'
    Plug 'mattn/emmet-vim'
call plug#end()

" Colors scheme

syntax on
colorscheme dracula

" Emment

let g:user_emmet_install_global = 0
let g:user_emmet_mode = 'n'
let g:user_emmet_leader_key = ','

autocmd FileType html,css EmmetInstall

" NERDTree

nnoremap <silent> <C-n> :NERDTreeToggle<CR>

" autocmd VimEnter * NERDTree

" My customizations

function! ToggleRuler()
    if (&relativenumber == 1)
        set norelativenumber
    else
        set relativenumber
        set number
    endif
endfunction

nnoremap <silent> <C-r> :call ToggleRuler()<CR>
vnoremap <silent> <C-c> :w !xclip -selection clipboard<CR><CR>
noremap <silent> <C-s> :w<CR>
