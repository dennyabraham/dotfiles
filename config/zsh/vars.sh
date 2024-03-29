export EDITOR=$BREW_PREFIX/bin/nvim
export VISUAL=$EDITOR
export ZSH_CUSTOM=$HOME/.config/zsh

# need this for gpg sometimes
export GPG_TTY=$(tty)

# needed to disable husky hooks
export HUSKY=0

# history size
export HISTSIZE=100000
export SAVEHIST=$HISTSIZE
