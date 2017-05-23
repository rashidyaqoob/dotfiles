#!/bin/bash

if [ ! -d $HOME/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

ln -sfn $PWD/zshrc $HOME/.zshrc

ln -sfn $PWD/gitconfig $HOME/.gitconfig
ln -sfn $PWD/gitignore_global $HOME/.gitignore_global
ln -sfn $PWD/gitmessage $HOME/.gitmessage

ln -sfn $PWD/vimrc $HOME/.vimrc

if [ ! -f ~/.vim/autoload/plug.vim ]; then
  echo "Installing vim-plug."
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

nvm install stable
nvm alias default stable
