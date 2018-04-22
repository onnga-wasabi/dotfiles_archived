cd `dirname $0`
git clone https://github.com/creationix/nvm.git ~/.nvm
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
nvm install v8.11.1
nvm use v8.11.1
