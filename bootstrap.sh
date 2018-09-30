#!/bin/bash

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh fish like autocompletion
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh spaceship prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# nord gnome
 curl https://raw.githubusercontent.com/arcticicestudio/nord-gnome-terminal/develop/src/nord.sh | bash

# vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# symlink files to $HOME
ln -sfn $PWD/zshrc $HOME/.zshrc
ln -sfn $PWD/gitconfig $HOME/.gitconfig
ln -sfn $PWD/gitignore_global $HOME/.gitignore_global
ln -sfn $PWD/gitmessage $HOME/.gitmessage
ln -sfn $PWD/vimrc $HOME/.vimrc
ln -sfn $PWD/tmux.conf $HOME/.tmux.conf
