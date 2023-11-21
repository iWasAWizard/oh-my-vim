#!/bin/bash

sudo apt install -y vim golang cmake npm python3 python3-pip
cp ./.vimrc ~
cp -r ./.vim ~

cd ~/.vim/plugged/YouCompleteMe/
python3 install.py --all

vim +PlugInstall +qall
