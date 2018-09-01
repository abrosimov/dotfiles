#!/bin/bash

### install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


### install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

### install antigen - zsh package manager
mkdir -p $HOME/.zsh
curl -L git.io/antigen > $HOME/.zsh/antigen.zsh


####
## TODO: install oh-my-zsh and base list of packages
####


####
## INSTALL required packages
####
mkdir $HOME/packages

### install powerline-fonts
pushd $HOME/packages/
git clone https://github.com/powerline/fonts.git --depth=1
pushd fonts
./install.sh
popd

### setup another custom package

popd
echo "base setup finished"
