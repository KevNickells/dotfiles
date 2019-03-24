source ~/.zsh_my_settings/.colours
source ~/.zsh_my_settings/.exports
source ~/.zsh_my_settings/.functions
source ~/.zsh_my_settings/.aliases
source ~/.zsh_my_settings/.my_settings

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# .git/hooks/... is where post commit hooks live
# TODO You can hide processes with zsh, no need for tmux
# TODO let's put some colour into the # git_add_commit_push:
# https://stackoverflow.com/questions/38931107/how-to-syntax-highlight-a-bash-output-some-help-information
# TODO cd [ last command  on each load
# a config file and not updating if now - that is less than 8?
# TODO automatically update Linux? sudo pacman -Syu
# tmux # start tmux on start up - this is going to need a bit of thinking before I can commit to it.
# NOTE this file is sourced on closing within ~/.vim-functions-and-commands

# antibody bundle < ~/.zsh_plugins > ~/.zsh_plugins.sh
# antibody update
# source ~/.zsh_plugins.sh
