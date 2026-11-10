# append completions to fpath
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)

source ~/.asdf/plugins/java/set-java-home.zsh
