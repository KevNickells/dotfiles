# NOTE this file is sourced on closing within .vim_my_functions/.functions-and-commands
# NOTE .git/hooks/... is where post commit hooks live
# NOTE show running background tasks with jobs, fg % [task no]

DISPLAY=:0

# Don't save certain commands to history.
HISTORY_IGNORE="(history|ls*|sz|zs|*test|cat*|Z"

# see "cd_and_chill" in functions - writes last directory
cd $(cat ~/.last_dir)
alias ld="cd $(cat ~/.last_dir)"

# Local convenience file so I don't have to think about server addresses
if [[ -a ~/.ip_aliases ]]; then
    source ~/.ip_aliases
fi

# Tells me whether I need to pull
git status -uno

zsh_source_files=(~/.zsh_my_settings/.*)

for source_file in $zsh_source_files
do
  source $source_file
done
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export TEXMFCNF='~/.latex_config:'

# TODO mapDispatch / mapState as shortcuts
# TODO create a function which'll allow me to ssh from the ip_aliases file, eg connect hoglet
# TODO figure out what's keeping a hold of the $PS1 variable
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

# TODO look into ZSH traps - allows for contingent arguments on background jobs
  # ... presumably can background jobs entirely (ie all output to /dev/null)
  # except on triggers - saves the faff of tmux

# TODO open in windows with o . (.functions) --> pain in the arse come back to

# TODO run the below weekly?
# TODO or have a re-think of how to manage all of this lot.
# antibody bundle < ~/.zsh_plugins > ~/.zsh_plugins.sh
# antibody update
#
# source ~/.zsh_plugins.sh
#
#function powerline_precmd() {
#    PS1="$(powerline-shell --shell zsh $?)"
#}
#
#function install_powerline_precmd() {
#  for s in "${precmd_functions[@]}"; do
#    if [ "$s" = "powerline_precmd" ]; then
#      return
#    fi
#  done
#  precmd_functions+=(powerline_precmd)
#}
#
#if [ "$TERM" != "linux" ]; then
#    install_powerline_precmd
#fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/kev/google-cloud-sdk/path.zsh.inc' ]; then . '/home/kev/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/kev/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/kev/google-cloud-sdk/completion.zsh.inc'; fi
