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
alias ta="tmux a"

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
alias nvimtex="NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LC_ALL="en_US.UTF-8"
export LANG=C
export PATH="$HOME/.config/nvim/nvim-osx64/bin:$PATH"

alias g++="clang++"
alias gcc="clang"

# Util functoins
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune -o -type d -print 2> /dev/null | fzf) &&
  cd "$dir"
}

# gitで一発でcheckout
fbr() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" | fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}
export SLACK_API_TOKEN="xoxp-278479033911-288312648849-289221720370-8f3bdb6f91b7870c1cf794f9442550e0"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#aws 
alias shaws="sh ~/workspace/intern/eseikatu/aws.sh"

export PIPENV_VENV_IN_PROJECT=1
