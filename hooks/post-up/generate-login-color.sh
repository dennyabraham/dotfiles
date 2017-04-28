#!/bin/bash

CONFIG_FILE="$HOME/.config/zsh/machine.sh"
MACHINE_COLOR="$(printf "%03d" $(((RANDOM % 230) + 1)))"

if [ -e $CONFIG_FILE ]; then
  if [ "$DOTFILE_UPDATE" = "regenerate" ]; then
    echo "[regenerating machine color]"
    echo "export MACHINE_COLOR=$MACHINE_COLOR" > $CONFIG_FILE
  else
    echo "[machine color already generated!]"
  fi
else
  echo "[generating machine color]"
  echo "export MACHINE_COLOR=$MACHINE_COLOR" > $CONFIG_FILE
fi
