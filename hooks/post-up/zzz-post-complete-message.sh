#!/bin/bash

if [ "$DOTFILE_UPDATE" = "force" ]; then
  echo '# To finish setup:'
  echo '* set up a [github] section in ~/.config/git/secret-config'
  echo '  [github]'
  echo '     user = dennyabraham'
  echo '     token = 00000000000000000000000000000000'
  echo '* set up a hub config in ~/.config/hub'
  echo '  github.com:'
  echo '  - user: dennyabraham'
  echo '    oauth_token: 0000000000000000000000000000000000000000'
  echo '    protocol: https'
  echo '* setup a bundler gem configconfig in ~/.bundle/config'
  echo '  bundle config <BUNDLE_HOST> <USERNAME>:<PASSWORD>'
  echo '* add HOMEBREW_GITHUB_API_TOKEN to ~/.config/zsh/secrets.sh'
  echo '  export HOMEBREW_GITHUB_API_TOKEN=0000000000000000000000000000000000000000'
  echo '* convert .config/library/preferences/com.manytricks.moom.plist to'
  echo '  binary and put in ~/Library/Preferences'
  touch $HOME/.config/zsh/secrets.sh
fi
