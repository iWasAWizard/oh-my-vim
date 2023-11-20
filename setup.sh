#!/bin/bash

sudo apt install vim
cp ./.vimrc ~
cp -r ./.vim ~
vim +PlugInstall +qall
