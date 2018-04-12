source ~/dotfiles/bash/aliases
source ~/dotfiles/bash/colors
source ~/dotfiles/bash/config
source ~/dotfiles/bash/env

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
