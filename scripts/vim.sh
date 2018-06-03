cd `dirname $0`
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/installer.sh
sh ~/installer.sh ~/.cache/dein 
rm ~/installer.sh

mkdir -p ~/.config/nvim
ln -sfn ~/dotfiles/.vimrc ~/.config/nvim/init.vim
ln -sfn ~/.config/nvim/init.vim ~/.vimrc

mkdir -p ~/.cache/dein/plugs
ln -sfn ~/dotfiles/plugs/* ~/.cache/dein/plugs

mkdir -p ~/.cache/templates
ln -sfn ~/dotfiles/templates/* ~/.cache/templates

ln -sfn ~/dotfiles/config/flake8 ~/.config/flake8
ln -sfn ~/dotfiles/config/pep8 ~/.config/pep8

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
source ~/.zshrc
