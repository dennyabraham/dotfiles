#!/bin/bash

if [ -d "$HOME/.oh-my-zsh/" ]; then
  if [ "$DOTFILE_UPDATE" = "force" ]; then
    echo "[force updating oh-my-zsh]"
    cd $HOME/.oh-my-zsh && git pull --rebase --stat origin master
  else
    echo "[oh-my-zsh already installed]"
  fi
else
  echo "[installing oh-my-zsh]"
  git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
fi
