#!/bin/bash

if [ -d "$HOME/.emacs.d/" ]; then
  if [ "$DOTFILE_UPDATE" = "force" ]; then
    echo "[force updating spacemacs]"
    cd $HOME/.emacs.d && git pull --rebase
  else
    echo "[spacemacs already installed]"
  fi
else
  echo "[installing spacemacs]"
  git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d
fi
