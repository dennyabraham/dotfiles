#!/bin/bash

if [ -d "$HOME/.vim/" ]; then
  if [ "$DOTFILE_UPDATE" = "force" ]; then
    echo "[force linking nvim]"
    mkdir -p $HOME/.config/nvim
    ln -nfs $BREW_PREFIX/bin/nvim $BREW_PREFIX/bin/vim
    ln -nfs $BREW_PREFIX/bin/nvim $BREW_PREFIX/bin/vi
    ln -nfs $HOME/.vimrc $HOME/.config/nvim/init.vim
  else
    echo "[nvim config already linked]"
  fi
else
  echo "[linking nvim config]"
  ln -nfs $HOME/.vimrc $HOME/.config/nvim/init.vim
fi
