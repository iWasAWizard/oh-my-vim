#!/bin/bash

sudo apt install vim
cp ./.vimrc ~
cp -r ./.vim ~

cd ~/.vim/plugged/YouCompleteMe/
python3 install.py --all

vim +PlugInstall +qall
