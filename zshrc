export ZSH=~/.oh-my-zsh
eval "$(starship init zsh)"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# ZSH_TMUX_AUTOSTART="true"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions tmux)
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
autoload -U compinit && compinit
zmodload -i zsh/complist

source $HOME/code/personal/dotfiles/aliases
source $HOME/code/personal/dotfiles/funcs
source $HOME/code/personal/dotfiles/paths

setopt auto_cd
cdpath=($HOME $HOME/code $HOME/code/work $HOME/code/personal)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'

# BEGIN SNIPPET: Platform.sh CLI configuration
HOME=${HOME:-'/Users/skippednote'}
export PATH="$HOME/"'.platformsh/bin':"$PATH"
if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/bitcomplete bit
