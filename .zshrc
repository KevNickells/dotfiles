source ~/.zsh_exports
source ~/.zsh_functions
source ~/.zsh_aliases
source ~/.zsh_my_settings

# TODO save last location to .local-cache (ie, every new cd prints a new value
# to .local_cache
# TODO source on save OR every 8 hours? Which'd mean putting a wee timestamp in
# a config file and not updating if now - that is less than 8?
# TODO automatically update Linux? sudo pacman -Syu
# TODO script start-hoglet to open a new tmux sesssion, split panes, run server
# tmux # start tmux on start up - this is going to need a bit of thinking before I can commit to it.
# NOTE this file is sourced on closing within ~/.vim-functions-and-commands

# antibody bundle < ~/.zsh_plugins > ~/.zsh_plugins.sh
# antibody update
# source ~/.zsh_plugins.sh
