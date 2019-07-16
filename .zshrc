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

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

 TODO up-to-date-with-lead-branch.sh - check on commit for updates to 'master' or whatever the lead branch is
# TODO git checkout -b thing could do with quietly setting upstream
# TODO gc (in zsh functions) - needs to include a no string option for -n and -h
# ^ which can be done with something like this:
# while getopts ":h" opt
# do
#     case ${opt} in
#         h )
#             echo "thing"
#             ;;
#     esac
# done
# shift $((OPTIND -1 ))

# TODO look into ZSH traps - allows for contingent arguments on background jobs
  # ... presumably can background jobs entirely (ie all output to /dev/null)
  # except on triggers - saves the faff of tmux

# TODO open in windows with o . (.functions) --> pain in the arse come back to

# TODO run the below weekly?
# TODO or have a re-think of how to manage all of this lot.
# antibody bundle < ~/.zsh_plugins > ~/.zsh_plugins.sh
# antibody update
# source ~/.zsh_plugins.sh
