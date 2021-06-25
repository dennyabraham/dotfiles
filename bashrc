export BREW_PATH=/usr/local
export NPM_PATH=$BREW_PATH/share/npm/bin
export PATH=$BREW_PATH/bin:$BREW_PATH/sbin:$NPM_PATH:$PATH
export MANPATH=$BREW_PATH/share/man:$MANPATH

# Aliases
alias scpresume="rsync --partial --progress --rsh=ssh"
alias be="bundle exec"

alias json_curl="curl -H 'Content-type: application/json' -H 'Accept: application/json'"
# ??
noindexusb () { cd $1 ; rm -r .Trashes .Spotlight-V100; mkdir -p .fseventsd/; touch .fseventsd/no_log .metadata_never_index .Trashes; cd -; }

# ignore case in commands
# bind 'set completion-ignore-case on' # i don't know why this won't work but i dont use bash so w/e

# history configuration
export HISTCONTROL=ignoredups
export HISTCONTROL=ignoreboth
export HISTFILESIZE=1000
export HISTSIZE=1000

# prompt configuration, including git branch name
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\u@\h: \W$(__git_ps1) \$ '
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

source $HOME/.config/zsh/arch.sh # HACK cuz i don't want to do it twice
source $BREW_PREFIX/opt/chruby/share/chruby/chruby.sh
source $BREW_PREFIX/opt/chruby/share/chruby/auto.sh
export DEFAULT_RUBY=$(cat ~/.ruby-version)
chruby $DEFAULT_RUBY
