" Automatically install plugins
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'alessandroyorba/sidonia'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'vim-scripts/zenesque.vim'

call plug#end()

filetype plugin indent on
syntax on

" Show trailing whitespace
match Error '\s\+$'

set ruler number
set nostartofline smartindent expandtab
set splitright splitbelow
set hlsearch incsearch magic showmatch
set showcmd cursorline wildmenu lazyredraw termguicolors laststatus=2
set tabstop=2 shiftwidth=2 softtabstop=2 cmdheight=2
set spelllang=en_gb
set colorcolumn=80
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor

" Enable spell checking in markdown files
au FileType markdown setlocal spell syntax=off

" colorscheme sidonia
let g:zenesque_colors=2
colorscheme zenesque

highlight ColorColumn ctermbg=black guibg=black

" Don't ask for confirmation when running ycm
let g:ycm_confirm_extra_conf=0
let g:ycm_path_to_python_interpreter="/usr/bin/python"

" Run clang-format when C-k is pressed
augroup formatgroup
autocmd!
autocmd FileType c,cpp map <C-K> :py3f /usr/share/vim/addons/syntax/clang-format.py<cr>
augroup END

" Show whitespace
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
set list
