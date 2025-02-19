# use python3 as python
export PATH=$PATH:$(brew --prefix python)/libexec/bin
export PATH=$PATH:$HOME/.bin:$HOME/.local/bin
export PATH=$PATH:$HOME/.cargo/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH="$PATH:${ASDF_DATA_DIR:-$HOME/.asdf}/shims"
