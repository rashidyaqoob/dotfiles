# alias
alias a='ls -alh --color=auto'
alias l='ls -lh --color=auto'
alias home='cd /mnt/c/Users/skipp'
alias d='cd ~/r/personal/dotfiles'
alias c="clear"
alias g="git"
alias phpunit="./vendor/bin/phpunit"
alias ex="explorer.exe ."
alias v="vim"
alias dc='../vendor/bin/drupal'

# functions
function mcd {
  mkdir $1
  cd $1
}

function gra {
  git remote add $1 $1
}

function grr {
  git remote remove $1
}

function blt() {
  if [ "`git rev-parse --show-cdup 2> /dev/null`" != "" ]; then
    GIT_ROOT=$(git rev-parse --show-cdup)
  else
    GIT_ROOT="."
  fi

  if [ -f "$GIT_ROOT/vendor/bin/blt" ]; then
    $GIT_ROOT/vendor/bin/blt "$@"
  else
    echo "You must run this command from within a BLT-generated project repository."
    return 1
  fi
}
