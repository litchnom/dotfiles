# Path to your oh-my-zsh installation.
  export ZSH=/home/cat/.oh-my-zsh

ZSH_THEME="sunaku"

plugins=(
  git
)

export GOPATH=$HOME/Projects/go
export PATH=$PATH:$GOPATH/bin
export EDITOR=/usr/bin/nvim

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias vim=nvim
alias v=nvim
alias nfetch="~/Scripts/nfetch.sh"
alias somafm="~/Scripts/somafm"
alias arch="~/Scripts/asciilogo.sh"
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
