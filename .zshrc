# NOTE this file is sourced on closing within .vim_my_functions/.functions-and-commands
# NOTE .git/hooks/... is where post commit hooks live
# NOTE show running background tasks with jobs, fg % [task no]
#
# NOTE 'cannot find powerline shell' -> sudo pip install powerline-shell

# Who knows whwat this does? I certainly can't remember
DISPLAY=:0

zsh_source_files=(~/.zsh_my_settings/.*)

for source_file in $zsh_source_files
do
  source $source_file
done
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# TODO up-to-date-with-lead-branch.sh - check on commit for updates to 'master' or whatever the lead branch is
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

# TODO run the below weekly?
# TODO or have a re-think of how to manage all of this lot.
# antibody bundle < ~/.zsh_plugins > ~/.zsh_plugins.sh
# antibody update
#
# source ~/.zsh_plugins.sh
export EDITOR=vim
