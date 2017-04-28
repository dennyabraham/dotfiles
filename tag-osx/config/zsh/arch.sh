export BREW_PREFIX="/usr/local"
export TMUX_DEFAULT_COMMAND="reattach-to-user-namespace -l $SHELL"
export ANDROID_HOME=${HOME}/Library/Android/sdk

if [ -n "$USE_DOCKER_MACHINE" ]; then
  eval "$(docker-machine env dev)"
fi
