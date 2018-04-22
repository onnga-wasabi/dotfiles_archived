cd `dirname $0`
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
      ln -sf "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
ln -sf ../.zshrc ~/.zshrc
ln -sf ../.zpreztorc ~/.zpreztorc
ln -sf ../.tmux.conf ~/.tmux.conf
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
source ~/.zshrc
