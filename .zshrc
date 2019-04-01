# NOTE this file is sourced on closing within ~/.vim-functions-and-commands
# NOTE .git/hooks/... is where post commit hooks live

zsh_source_files=(.zsh_my_settings/.*)

for source_file in $zsh_source_files
do
  source $source_file
done

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# TODO You can hide processes with zsh, no need for tmux ... really?
# TODO let's put some colour into the # git_add_commit_push:
# https://stackoverflow.com/questions/38931107/how-to-syntax-highlight-a-bash-output-some-help-information
# TODO cd [ last command  on each load

# antibody bundle < ~/.zsh_plugins > ~/.zsh_plugins.sh
# antibody update
# source ~/.zsh_plugins.sh
#
