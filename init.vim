" Automatically install plugins
let data_dir = has('nvim') ? stdpath('config') : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'djjcast/mirodark'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'

call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme mirodark

filetype plugin indent on
syntax on

" Show trailing whitespace
match Error '\s\+$'

set nostartofline autoindent smartindent expandtab
set splitright splitbelow
set hlsearch incsearch magic showmatch
set showcmd cursorline wildmenu lazyredraw termguicolors laststatus=2
set tabstop=4 shiftwidth=4 softtabstop=4 cmdheight=2
set spell spelllang=en_gb
set colorcolumn=80
"set textwidth=80
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
set belloff=all
set nojoinspaces

hi Normal guibg=NONE ctermbg=NONE

let mapleader = ","

" Run clang-format when C-k is pressed
augroup formatgroup
autocmd!
autocmd FileType c,cpp,objcpp map <C-K> :py3f /Users/reuk/bin/clang-format.py<cr>
augroup END

" Show whitespace
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
set list

" Strip whitespace when saving source files
autocmd FileType c,cpp,ruby,python,objc,objcpp,cmake autocmd BufWritePre <buffer> %s/\s\+$//e

let g:fzf_tags_command = 'ctags --extra=+f -R'
nnoremap <leader>d :GFiles<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>t :Tags<cr>

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Lightline config
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ }
