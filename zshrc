export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
#ZSH_THEME="random"

#ZSH_THEME="intheloop"
#ZSH_THEME="jreese"
#ZSH_THEME="steeef"
#ZSH_THEME="tonotdo"
#ZSH_THEME="lukerandall"
#ZSH_THEME="tjkirch"

ZSH_THEME="dennyabraham"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(z)

# User configuration

source $HOME/.config/zsh/arch.sh
source $HOME/.config/zsh/brew.sh
source $HOME/.config/zsh/vars.sh # repeated at the end for hist size
source $HOME/.config/zsh/chruby.sh
source $HOME/.config/zsh/aliases.sh
source $HOME/.config/zsh/paths.sh
source $HOME/.config/zsh/asdf.sh # must be after paths
# source $HOME/.config/zsh/mise.sh
source $HOME/.config/zsh/rustup.sh
source $HOME/.config/zsh/secrets.sh
source $HOME/.config/zsh/machine.sh
source $HOME/.config/zsh/hostclass.sh
source $ZSH/oh-my-zsh.sh
source $HOME/.config/zsh/atuin.sh
source $HOME/.config/zsh/uv.sh
source $HOME/.config/zsh/local.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

fpath=(/usr/local/share/zsh-completions $fpath)

setopt complete_in_word
setopt hist_ignore_all_dups  # don't record dupes in history
setopt hist_reduce_blanks

set -o emacs
source $HOME/.config/zsh/vars.sh # repeated here for hist size
