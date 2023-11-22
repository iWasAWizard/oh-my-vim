call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'jianmiao/auto-pairs'
Plug 'preservim/tagbar'
Plug 'dyng/ctrlsf.vim'
Plug 'derekwyatt/vim-fswitch'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'matze/vim-move'

Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'Badacadabra/vim-archery'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'scheakur/vim-scheakur'
Plug 'lifepillar/vim-solarized'

call plug#end()

syntax on
filetype plugin indent on

set nocompatible
set number
set expandtab
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set incsearch
set hlsearch
set splitbelow
set backspace=indent,eol,start

nmap <C-F>f <Plug>CtrlSFPrompt " (Ctrl-F + f)
xmap <C-F>f <Plug>CtrlSFVwordPath" (Ctrl-F + F)
xmap <C-F>F <Plug>CtrlSFVwordExec" (Ctrl-F + n)
nmap <C-F>n <Plug>CtrlSFCwordPath" (Ctrl-F + o )
nnoremap <C-F>o :CtrlSFOpen<CR>" (Ctrl-F + t) 
nnoremap <C-F>t :CtrlSFToggle<CR>" (Ctrl-F + t)
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
nmap <C-Z> :vsplit <bar> :wincmd l <bar> :FSRight<CR>" (Ctrl-Z)
nmap <F2> :AutoPairsShortcutToggle<CR>
nmap <F3> :NERDTreeToggle<CR>
nmap <F4> :TagbarToggle<CR>
nmap <F5> :GitGutterToggle<CR>

let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 0
let NERDTreeMinimalMenu = 1
let NERDTreeWinPos = 'left'
let NERDTreeWinSize = 31

let g:tagbar_autofocus = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_position = 'botright vertical'

let g:ctrlsf_backend = 'ack'
let g:ctrlsf_auto_close = { "normal":0, "compact":0 }
let g:ctrlsf_auto_focus = { "at":"start" }
let g:ctrlsf_auto_preview = 0
let g:ctrlsf_case_sensitive = 'smart'
let g:ctrlsf_default_view = 'normal'
let g:ctrlsf_regex_pattern = 0
let g:ctrlsf_position = 'right'
let g:ctrlsf_winsize = '46'
let g:ctrlsf_default_root = 'cwd'

au! BufEnter *.cpp let b:fswitchdst = 'hpp,h'
au! BufEnter *.h let b:fswitchdst = 'cpp,c'

set background=dark
colorscheme nord 
