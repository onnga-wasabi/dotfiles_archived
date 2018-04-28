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
alias vim='nvim'

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv rehash


# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#tmux
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

# cuda, cudnnenv
export LD_LIBRARY_PATH="$HOME/.cudnnenv/active/cuda/lib64:$LD_LIBRARY_PATH"
export CPATH="$HOME/.cudnn/active/cuda/include:$CPATH"
export LIBRARY_PATH="$HOME/.cudnn/active/cuda/lib64:$LIBARAY_PATH"
export CUDA_HOME="/usr/local/cuda"

# change cupy's cache directory
export CUPY_CACHE_DIR=/data/wasabi

# ls colors
export lscolors=gxfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'

autoload -U compinit
compinit
