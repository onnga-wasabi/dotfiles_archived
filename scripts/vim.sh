cd `dirname $0`
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > ~/install.sh
sh ~/install.sh
rm ~/install.sh
ln -sf ~/dotfiles/.vimrc ~/.vimrc
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
pyenv local 3.6.0
pip install autopep8
