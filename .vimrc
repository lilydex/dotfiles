set nocompatible              " be iMproved, required
set ruler
set nu
set cindent
set ts=8
set expandtab
set mouse=a
set noundofile
set nobackup
syntax on
colorscheme elflord
filetype off                  " required

"Code fold for python
set foldmethod=indent
set foldlevel=99

nnoremap <space> za
vnoremap <space> zf

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'AutoClose'
Plugin 'Tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Set mapleader
let mapleader = ","

nmap <leader>te :tabedit
map <F5> :NERDTreeToggle<CR>
map <F9> :TagbarToggle<CR>
map <F10> :!./run.sh<CR>
nmap <leader>jd :YcmCompleter GoToDefinition<CR>
nmap <leader>jf :YcmCompleter GoToDeclaration<CR>
nmap <leader>gt :YcmCompleter GetType<CR>
nmap <leader>gp :YcmCompleter GetParent<CR>

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

set laststatus=2

if !has('gui_running')
	set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"x":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }
