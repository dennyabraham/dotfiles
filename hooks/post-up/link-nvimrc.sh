#!/bin/bash

if [ -d "$HOME/.vim/" ]; then
  if [ "$DOTFILE_UPDATE" = "force" ]; then
    echo "[force linking nvim]"
    mkdir -p $HOME/.config/nvim
    ln -nfs $HOMEBREW_PREFIX/bin/nvim $HOMEBREW_PREFIX/bin/vim
    ln -nfs $HOMEBREW_PREFIX/bin/nvim $HOMEBREW_PREFIX/bin/vi
  else
    echo "[nvim config already linked]"
  fi
fi
