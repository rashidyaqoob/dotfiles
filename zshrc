export ZSH=/Users/skippednote/.oh-my-zsh
ZSH_THEME="avit"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
source $HOME/Code/personal/dotfiles/aliases
source $HOME/Code/personal/dotfiles/funcs
source $HOME/Code/personal/dotfiles/paths
