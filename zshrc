export ZSH=/home/skippednote/.oh-my-zsh
ZSH_THEME="avit"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

source $HOME/r/personal/dotfiles/aliases
source $HOME/r/personal/dotfiles/funcs
source $HOME/r/personal/dotfiles/paths

setopt auto_cd
cdpath=($HOME/r $HOME/r/work $HOME/r/personal)
