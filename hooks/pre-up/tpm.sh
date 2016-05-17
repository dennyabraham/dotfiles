#!/bin/bash

if [ -d "$HOME/.tmux/plugins/tpm/" ]; then
  if [ "$DOTFILE_UPDATE" = "force" ]; then
    echo "[force updating tmux plugin manager]"
    cd $HOME/.tmux/plugins/tpm && git pull --rebase
  else
    echo "[tmux plugin manager already installed]"
  fi
else
  echo "[installing tmux plugin manager]"
  mkdir -p $HOME/.tmux/plugins
  git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
  echo "[to finish install, run 'prefix + I' inside of tmux]"
fi
