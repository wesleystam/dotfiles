# Path to your oh-my-zsh installation.
export ZSH="/Users/wesley/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git asdf)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias s="cd .."
alias devlog="tail -f -n 500 log/development.log"
alias reload="kill -9 \`ps aux | pgrep -f puma-dev:`${PWD##*}`"\`
alias hosts="sudo vim /etc/hosts"
alias gitstaging="git br -D staging && git co -b staging && git push -f -u origin staging"

export EDITOR="vim"

[[ -n $TMUX ]] && export TERM="xterm-256color"

export PATH="./bin:$PATH"

# MySQL stuff
export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/mysql@8.0/lib"
export CPPFLAGS="-I/opt/homebrew/opt/mysql@8.0/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/mysql@8.0/lib/pkgconfig"

export ASDF_GOLANG_MOD_VERSION_ENABLED=true

# Google Cloud SDK
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

# Rust
. "$HOME/.cargo/env"
export PATH="$PATH:/Users/wesley/.cargo/bin"

# Dont share the history in every screen
setopt nosharehistory
