" vim-plug - a nice plugin manager

" the following plugins will be installed in the specified directory:
call plug#begin('~/.vim/plugged')

  " paste in vim much more easily
  Plug 'roxma/vim-paste-easy' 

  " tab completion for a range of languages
  Plug 'Valloric/YouCompleteMe', { 'do': 'python3 ./install.py --clang-completer --js-completer --java-completer'} 

  " handy syntax checking
  Plug 'vim-syntastic/syntastic'

  " easily traverse big projects
  Plug 'scrooloose/nerdtree'

  " see which lines have been modified in a git-tracked project
  Plug 'airblade/vim-gitgutter'

  " cool status bar 
  Plug 'vim-airline/vim-airline'

  " live markdown preview in your browser
  Plug 'JamshedVesuna/vim-markdown-preview'

call plug#end()

syntax on 
set number
colorscheme gruvbox
set background=dark
set tabstop=2     
set softtabstop=2 
set expandtab     
set autoindent    

" REMAPS
inoremap jj <ESC><RIGHT> 
