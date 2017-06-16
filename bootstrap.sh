#!/bin/bash

# Shouldn't exist the rest of the script.
if [ ! -d $HOME/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

if [ ! -d $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

if [ ! -d $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

if [ ! -d $HOME/.oh-my-zsh/custom/plugins/k ]; then
  git clone https://github.com/supercrabtree/k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/k
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

if [ ! -d $HOME/.nvm ]; then
  mkdir $HOME/.nvm
  nvm install stable
  nvm alias default stable
fi
