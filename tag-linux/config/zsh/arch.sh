export BREW_PREFIX="$HOME/.linuxbrew"
export HOST_PROMPT_COLOR="cyan"
export LOGIN_COLOR=$(printf "%03d" $(((RANDOM % 230) + 1)))
export TMUX_DEFAULT_COMMAND="$SHELL"

# this might not work outside of a running x instance
# xset r rate (delay in ms) (repeat in hz)
export DISPLAY=:0
xset r rate 200 100
