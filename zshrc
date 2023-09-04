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
alias gitstaging="git br -D staging; git co -b staging && git push -f -u origin staging"

export EDITOR="vim"

[[ -n $TMUX ]] && export TERM="xterm-256color"

export PATH="./bin:$PATH"

# MySQL stuff
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"
export PKG_CONFIG_PATH="/usr/local/opt/mysql@5.7/lib/pkgconfig"

# Google Cloud SDK
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# Rust
. "$HOME/.cargo/env"

# Dont share the history in every screen
setopt nosharehistory
