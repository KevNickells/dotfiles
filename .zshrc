source ~/.zsh_colours
source ~/.zsh_exports
source ~/.zsh_functions
source ~/.zsh_aliases
source ~/.zsh_my_settings
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# .git/hooks/... is where post commit hooks live
# TODO let's put some colour into the # git_add_commit_push:
# https://stackoverflow.com/questions/38931107/how-to-syntax-highlight-a-bash-output-some-help-information
# TODO cd [ last command  on each load
# a config file and not updating if now - that is less than 8?
# TODO automatically update Linux? sudo pacman -Syu
# TODO script start-hoglet to open a new tmux sesssion, split panes, run server
# tmux # start tmux on start up - this is going to need a bit of thinking before I can commit to it.
# NOTE this file is sourced on closing within ~/.vim-functions-and-commands

# antibody bundle < ~/.zsh_plugins > ~/.zsh_plugins.sh
# antibody update
# source ~/.zsh_plugins.sh

export NPM_PACKAGES="/home/kev/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules${NODE_PATH:+:$NODE_PATH}"
export PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
