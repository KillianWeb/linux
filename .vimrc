"Install Vim-Plug if not already
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" :PlugInstall and :PlugUpdate and :PlugClean
call plug#begin()
"Python Formatter
Plug 'psf/black', { 'branch': 'stable' } 
call plug#end()



"Default Configs
source $VIMRUNTIME/defaults.vim

"Prettiness
syntax on
set number
filetype plugin indent on
set background=dark 
set cursorline
colorscheme retrobox
hi Comment ctermfg=2 
hi String ctermfg=175 
hi Function cterm= None ctermfg=67 
hi Operator ctermfg=220 
hi Repeat ctermfg=220
hi Special ctermfg=220
hi PythonEscape ctermfg=164

"Status Line
"set laststatus=2
"set statusline=%f         " Path to the file
"set statusline+=\ -\      " Separator
"set statusline+=%y
"set statusline+=%=        " Switch to the right side
"set statusline+=%l        " Current line
"set statusline+=/         " Separator
"set statusline+=%L        " Total lines

"Doesn't save deleted contents to buffer
noremap dd "_dd
