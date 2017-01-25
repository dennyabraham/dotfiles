source $BREW_PREFIX/opt/chruby/share/chruby/chruby.sh
source $BREW_PREFIX/opt/chruby/share/chruby/auto.sh
export DEFAULT_RUBY=$(cat ~/.ruby-version)
chruby $DEFAULT_RUBY
