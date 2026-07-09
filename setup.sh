#!/bin/bash

set -euo pipefail

repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

sudo apt update
sudo apt install -y \
    ack \
    build-essential \
    cmake \
    git \
    golang \
    mono-complete \
    nodejs \
    npm \
    openjdk-17-jdk \
    python3 \
    python3-dev \
    python3-pip \
    universal-ctags \
    vim-nox

cp "${repo_root}/.vimrc" "${HOME}/.vimrc"
mkdir -p "${HOME}/.vim/autoload"
cp "${repo_root}/.vim/autoload/plug.vim" "${HOME}/.vim/autoload/plug.vim"
rm -rf "${HOME}/.vim/plugged"

vim '+PlugInstall --sync' +qall

cd "${HOME}/.vim/plugged/YouCompleteMe"
python3 install.py --all
