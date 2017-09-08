" Automatically install plugins
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'lu-ren/SerialExperimentsLain'
Plug 'chriskempson/base16-vim'
Plug 'dbgx/lldb.nvim'

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
set spell spelllang=en_gb
set colorcolumn=80
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor

colorscheme base16-ashes

hi Normal guibg=NONE ctermbg=NONE

" Don't ask for confirmation when running ycm
let g:ycm_confirm_extra_conf=0

let mapleader=","
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gt :YcmCompleter GoTo<CR>

let g:ycm_path_to_python_interpreter="/usr/bin/python"

nmap <M-b> <Plug>LLBreakSwitch

" Run clang-format when C-k is pressed
augroup formatgroup
autocmd!
autocmd FileType c,cpp map <C-K> :py3f /usr/share/vim/addons/syntax/clang-format.py<cr>
augroup END

" Show whitespace
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
set list
