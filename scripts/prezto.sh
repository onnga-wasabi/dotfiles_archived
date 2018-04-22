cd `dirname $0`
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zpreztorc ~/.zpreztorc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sfn ~/dotfiles/layout/prompt_agnoster_setup ~/.zprezto/modules/prompt/functions/prompt_agnoster_setup
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
source ~/.zshrc
