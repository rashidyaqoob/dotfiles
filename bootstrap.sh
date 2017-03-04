#!/bin/bash

ln -sfn $PWD/config.fish $HOME/.config/fish/
ln -sfn $PWD/aliases $HOME/.config/fish/
ln -sfn $PWD/paths $HOME/.config/fish/
ln -sfn $PWD/funcs $HOME/.config/fish/

ln -sfn $PWD/gitconfig $HOME/.gitconfig
ln -sfn $PWD/gitignore_global $HOME/.gitignore_global
ln -sfn $PWD/gitmessage $HOME/.gitmessage

omf install nvm
omf install pure
omf install blt

nvm install stable
nvm alias default stable
npm install -g yarn
