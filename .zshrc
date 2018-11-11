#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
# Customize to your needs...
PATH=$PATH:~/bin
PAHT=$PATH:/opt/activator-dist-1.3.7

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv rehash

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# tmux
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

# ls colors
export lscolors=gxfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'

autoload -U compinit
compinit

source ~/.zshrc.local

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
PATH=$PATH:/usr/local/lib/stanford-corenlp-full-2013-06-20

PATH=$PATH:/Applications/MRIcron/mricron.app/Contents/MacOS
alias checupy="python -c 'import chainer; chainer.print_runtime_info()'"

# nvim
alias vim='nvim'

# Scala
export PATH="${HOME}/.scalaenv/bin:${PATH}"
eval "$(scalaenv init -)"

export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH
eval "$(goenv init -)"

export GOPATH=$HOME/go
PATH=$PATH:$GOPATH/bin

alias dict="python /Users/wasabi/workspace/private/cli-dict/ejdic-hand-sqlite/dict.py -q"
alias dirs="dirs -v"
