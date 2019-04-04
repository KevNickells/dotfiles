# NOTE this file is sourced on closing within ~/.vim-functions-and-commands
# NOTE .git/hooks/... is where post commit hooks live
# NOTE show running background tasks with jobs, fg % [task no]

# see 'cd_and_chill' in functions - writes last directory
cd $(cat ~/.last_dir)

zsh_source_files=(~/.zsh_my_settings/.*)

for source_file in $zsh_source_files
do
  source $source_file
done

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# TODO tmux versus backgrounding processes - server output still faffs about with vim
# TODO look into ZSH traps - allows for contingent argumetns on background jobs
  # TODO open in windows with o . (.functions)

# TODO run the below weekly?
# antibody bundle < ~/.zsh_plugins > ~/.zsh_plugins.sh
# antibody update
# source ~/.zsh_plugins.sh
