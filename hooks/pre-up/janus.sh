#!/bin/bash

if [ -d "$HOME/.vim/" ]; then
  if [ "$DOTFILE_UPDATE" = "force" ]; then
    echo "[force updating janus]"
    cd $HOME/.vim/ && rake
  else
    echo "[janus already installed]"
  fi
else
  echo "[installing janus]"
  git clone --recursive https://github.com/carlhuda/janus.git $HOME/.vim
fi
