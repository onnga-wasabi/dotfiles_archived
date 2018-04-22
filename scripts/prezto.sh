cd `dirname $0`
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
ln -sf ~/.zshrc ~/.zshrc
ln -sf ~/.zpreztorc ~/.zpreztorc
ln -sf ~/.tmux.conf ~/.tmux.conf
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
source ~/.zshrc
