if has('gui_running')
    set guioptions-=rL
endif

syntax on

set noswapfile
set encoding=UTF-8

set list

set hlsearch incsearch
let hicolor=" ctermbg=none cterm=bold ctermfg=10"
execute "highlight Search".hicolor
execute "highlight MatchParen".hicolor

set ignorecase smartcase

set number
set cursorline

set cindent
set expandtab shiftround softtabstop=4 shiftwidth=4

set foldmarker={,} foldmethod=marker foldlevel=1
set wildmode=list:longest wildmenu

set hidden
set autoread autowriteall

set runtimepath+=/usr/local/opt/fzf

set iskeyword=a-z,A-Z,48-57,_

if executable('ag') 
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
endif

filetype plugin on

inoremap ( ()<Left>
inoremap [ []<Left>
inoremap ' ''<Left>
inoremap " ""<Left>
inoremap ` ``<Left>
inoremap { {<CR>}<Esc>O
nnoremap <C-K> I// <Esc>
vnoremap <C-K> <Esc>`>a */<Esc>`<i/* <Esc>
nnoremap <C-S> :grep <cword><CR>
