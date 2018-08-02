cd `dirname $0`
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
source ~/.zshrc
pyenv install 3.6.0
pyenv virtualenv 3.6.0 v36
pyenv local v36
pip install neovim flake8 autopep8
