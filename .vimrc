set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'octol/vim-cpp-enhanced-highlight'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
"Plugin 'Buffergator'

call vundle#end()
" Now we can turn our filetype functionality back on
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces

set expandtab
set number

"Write the old file out when switching between files.
set autowrite

"Display current cursor position in lower right corner.
set ruler

"Indent stuff
set smartindent
set autoindent
syntax on

"Set font type and size. Depends on the resolution. Larger screens, prefer h20
"set guifont=Menlo:h14

"Show command in bottom right portion of the screen
"set showcmd

"Prefer relative line numbering?
"set relativenumber

"Always show the status line
"set laststatus=2

"Set incremental searching"
set incsearch

"Highlight searching
set hlsearch

"case insensitive search
set ignorecase
set smartcase

"Hide mouse when typing
"set mousehide


"========= Plugin Related ==== 
"to open nerdtree automatically when vim stats
"autocmd vimenter * NERDTree

"to open nerdtree automatically when no file was specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"To map nerdtree to Ctrl n
map <C-n> :NERDTreeToggle<CR>

"To close vim if only window open is nerdtree"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Key bindings for CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Ignoring Files in .gitignore in CtrlP
 let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

 "Disable arrow keys 
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"Map jj to command mode
:imap jj <Esc>
