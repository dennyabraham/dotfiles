#!/bin/bash

if [ "$DOTFILE_UPDATE" = "force" ]; then
  echo "[updating rubies]"
  ruby-install -L > /dev/null
else
  echo "[not updating rubies]"
fi
