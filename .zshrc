source ~/.zsh_exports
source ~/.zsh_functions
source ~/.zsh_aliases
source ~/.zsh_my_settings
source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# TODO sort out gc in .zsh_functions
# TODO automatically update Linux? sudo pacman -Syu
# TODO script start-hoglet to open a new tmux sesssion, split panes, run server
#
# tmux # start tmux on start up - this is going to need a bit of thinking before I can commit to it.
# NOTE this file is sourced on closing within ~/.vim-functions-and-commands

antibody bundle < ~/.zsh_plugins > ~/.zsh_plugins.sh
antibody update
source ~/.zsh_plugins.sh
