export BREW_PREFIX="/usr/local"
export HOST_PROMPT_COLOR="green"
export LOGIN_COLOR=$(printf "%03d" $(((RANDOM % 230) + 1)))
export TMUX_DEFAULT_COMMAND="reattach-to-user-namespace -l $SHELL"
export ANDROID_HOME=${HOME}/Library/Android/sdk

if [ -n "$USE_DOCKER_MACHINE" ]; then
  eval "$(docker-machine env dev)"
fi
