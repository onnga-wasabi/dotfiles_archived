cd `dirname $0`
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
source ~/.zshrc
pyenv install 3.6.0
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
