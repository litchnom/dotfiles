export ZSH=/home/cat/.oh-my-zsh
export GOPATH=$HOME/Projects/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/.scripts
export EDITOR=/usr/bin/nvim

ZSH_THEME="sunaku"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias vim=nvim
alias vi=nvim
alias v=nvim
alias sv='sudo nvim'
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
