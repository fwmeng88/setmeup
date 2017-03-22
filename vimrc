set nocompatible
" Install vim-plug if needed: now done in the setup script
" if empty(glob('~/.vim/autoload/plug.vim'))
"   " set modifiable
"   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   autocmd VimEnter * PlugInstall | source $MYVIMRC
" endif
" Add the plugins
call plug#begin('~/.vim/plugged')

    " Git plugin: Gstatus, Gedit, Gdiff
    Plug 'tpope/vim-fugitive'
    
    " gundo, displays undo tree
    Plug 'sjl/gundo.vim'
    
    " Autocomplete
    Plug 'davidhalter/jedi-vim'
    
    " Nerd-tree
    Plug 'scrooloose/nerdtree'
    
    " Air-line
    Plug 'vim-airline/vim-airline'
    
    " On the flight syntax check
    " Plug 'w0rp/ale'
    
    " Auto doc-strings (on def, :Pydocstring or <C-l>)
    Plug 'heavenshell/vim-pydocstring'

    " Better indentation for Python
    Plug 'vim-scripts/indentpython.vim'

    " Plug 'nvie/vim-flake8'

    " Add the 's' (surrounding) option
    " see :help surround
    Plug 'tpope/vim-surround'

	" view css colors in code
	Plug 'ap/vim-css-color'

call plug#end()

let g:pymode_python = 'python3'

source ~/.vim/settings.vim
source ~/.vim/keybindings.vim
map <Leader>n :NERDTreeToggle<CR>

" Details for jedi
"
"
"    Completion <C-Space>
"    Goto assignments <leader>g (typical goto function)
"    Goto definitions <leader>d (follow identifier as far as possible, includes imports and statements)
"    Show Documentation/Pydoc K (shows a popup with assignments)
"    Renaming <leader>r
"    Usages <leader>n (shows all the usages of a name)
"    Open module, e.g. :Pyimport os (opens the os module)


