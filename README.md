# oh-my-vim

Personal Vim setup with a preconfigured `.vimrc`, bundled `vim-plug`, and a small setup script.

## What's included

- Plugin management through `vim-plug`
- File tree, tags, search, git, and pairing plugins
- Preconfigured keybindings for common toggles
- A setup script that copies the Vim config into your home directory and installs plugins

## Included plugins

- NERDTree
- YouCompleteMe
- Syntastic
- vim-airline
- vim-fugitive
- auto-pairs
- Tagbar
- ctrlsf.vim
- vim-fswitch
- indentLine
- vim-gitgutter
- vim-move
- iceberg.vim
- nord-vim
- vim-archery
- vim-hybrid-material
- vim-scheakur
- vim-solarized

## Setup

From the repository root:

```bash
chmod +x setup.sh
./setup.sh
```

The setup script:

1. Installs Vim and supporting packages with `apt`
2. Copies `.vimrc` to `~/.vimrc`
3. Copies `.vim` to `~/.vim`
4. Builds the YouCompleteMe completer
5. Runs `vim +PlugInstall +qall`

## Notes

- `setup.sh` uses `sudo apt install`, so it is intended for Debian/Ubuntu-based systems.
- The current colorscheme in `.vimrc` is `nord`.
- The configuration maps function keys such as `F2` through `F5` for plugin toggles.
