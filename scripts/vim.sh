cd `dirname $0`
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/installer.sh
sh ~/installer.sh ~/.cache/dein 
rm ~/installer.sh
mkdir -p ~/.config/nvim
ln -sfn ~/dotfiles/.vimrc ~/.config/nvim/init.vim
ln -sfn ~/.config/nvim/init.vim ~/.vimrc
mkdir -p ~/.cache/dein/plugs
ln -sfn ~/dotfiles/deinplugs/dein.toml ~/.cache/dein/plugs/dein.toml
ln -sfn ~/dotfiles/deinplugs/lazy_dein.toml ~/.cache/dein/plugs/lazy_dein.toml
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
source ~/.zshrc
