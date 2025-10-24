sudo apt update
sudo apt install nodejs npm
sudo npm i -g bash-language-server
mkdir -p ~/.vim/autoload 
curl -fLs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > ~/.vim/autoload/plug.vim
touch ~/.vimrc
echo -e "call plug#begin('~/.vim/plugged')\nPlug 'neoclide/coc.nvim', {'branch': 'release'}\nPlug 'preservim/nerdtree'\nPlug 'vim-airline/vim-airline'\nPlug 'joshdick/onedark.vim'\ncall plug#end()\nset number\nset mouse=a\nset cursorline\n:highlight Cursorline cterm=bold ctermbg=black\nsyntax on\nset hlsearch\nset ignorecase\nset smartcase\nset showmatch\ncolorscheme onedark" > ~/.vimrc
echo "after runnig this script you should run CocInstall coc-sh in vim command mode"

