cd `dirname $0`
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ~/installer.sh ~/.cache/dein
rm ~/installer.sh
mkdir -p ~/.config/nvim/init.vim
ln -sf ~/dotfiles/.vimrc ~/.config/nvim/ini.vim
ln -sf ~/.config/nvim/ini.vim ~/.vimrc
mkdir -p ~/.cache/dein/plugs
ln -sf ~/dotfiles/deinplugs ~/.cache/dein/plugs
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
source ~/.zshrc
