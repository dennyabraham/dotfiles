export BREW_PREFIX="$HOME/.linuxbrew"
export HOST_PROMPT_COLOR="cyan"
export LOGIN_COLOR=$(printf "%03d" $(((RANDOM % 230) + 1)))
export TMUX_DEFAULT_COMMAND="$SHELL"

# this might not work outside of a running x instance
export DISPLAY=:0

# xset r rate (delay in ms) (repeat in hz)
xset r rate 300 150

# make caps ctrl
setxkbmap -option altwin:swap_alt_win
# use osx alt + super layout
setxkbmap -option caps:ctrl_modifier
