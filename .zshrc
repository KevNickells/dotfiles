# NOTE this file is sourced on closing within .vim_my_functions/.functions-and-commands
# NOTE .git/hooks/... is where post commit hooks live
# NOTE show running background tasks with jobs, fg % [task no]

DISPLAY=localhost:0.0

# see "cd_and_chill" in functions - writes last directory
cd $(cat ~/.last_dir)
alias ld="cd $(cat ~/.last_dir)"

# Tells me whether I need to pull
git status -uno

zsh_source_files=(~/.zsh_my_settings/.*)

for source_file in $zsh_source_files
do
  source $source_file
done

# TODO this should probably be dynamic. It is not dynamic
# ls -A ~/.vim_my_settings ~/.vim/ftplugin ~/.zsh_my_settings > ~/.config_file_list

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# TODO look into ZSH traps - allows for contingent arguments on background jobs
  # ... presumably can background jobs entirely (ie all output to /dev/null)
  # except on triggers - saves the faff of tmux

# TODO open in windows with o . (.functions) --> pain in the arse come back to

# TODO run the below weekly?
# TODO or have a re-think of how to manage all of this lot.
# antibody bundle < ~/.zsh_plugins > ~/.zsh_plugins.sh
# antibody update
# source ~/.zsh_plugins.sh
