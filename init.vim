" Automatically install plugins
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'alessandroyorba/despacio'
Plug 'alessandroyorba/sidonia'
Plug 'alessandroyorba/monrovia'

call plug#end()

filetype plugin indent on
syntax on

set ruler number 
set nostartofline smartindent expandtab 
set splitright splitbelow 
set hlsearch incsearch magic showmatch 
set showcmd cursorline wildmenu lazyredraw termguicolors laststatus=2
set tabstop=4 shiftwidth=4 softtabstop=4 colorcolumn=80 cmdheight=2 

colorscheme monrovia

let g:ycm_confirm_extra_conf=0
