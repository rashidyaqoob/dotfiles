#!/bin/bash

ln -sfn $PWD/config.fish $HOME/.config/fish/
ln -sfn $PWD/aliases $HOME/.config/fish/
ln -sfn $PWD/paths $HOME/.config/fish/
ln -sfn $PWD/funcs $HOME/.config/fish/

ln -sfn $PWD/gitconfig $HOME/.gitconfig
ln -sfn $PWD/gitignore_global $HOME/.gitignore_global
ln -sfn $PWD/gitmessage $HOME/.gitmessage
ln -sfn $PWD/vimrc $HOME/.vimrc

if [ ! -f ~/.vim/autoload/plug.vim ]; then
  echo "Installing vim-plug."
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi


omf install nvm
omf install pure
omf install blt

nvm install stable
nvm alias default stable
npm install -g yarn
