
if [[ -e /usr/local/bin/brew ]]
then
  export BREW_LOCATION="/usr/local/bin/brew"
elif [[ -e /home/linuxbrew/.linuxbrew/bin/brew ]]
then
  export BREW_LOCATION="/home/linuxbrew/.linuxbrew/bin/brew"
else
  export BREW_LOCATION="/opt/homebrew/bin/brew"
fi
eval $($BREW_LOCATION shellenv)
[[ -n $HOMEBREW_PREFIX ]] || echo "brew.sh: HOMEBREW_PREFIX is not set after brew shellenv ($BREW_LOCATION)" >&2
