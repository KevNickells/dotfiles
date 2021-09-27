# NOTE this file is sourced on closing within .vim_my_functions/.functions-and-commands
# NOTE .git/hooks/... is where post commit hooks live
# NOTE show running background tasks with jobs, fg % [task no]
# NOTE see ~/.xinitrc & ~/.Xmodmap for remapping caps
#
# NOTE 'cannot find powerline shell' -> sudo pip install powerline-shell

# for when caps lock isn't mapped
# xmodmap ~/.xmodmap

# Who knows whwat this does? I certainly can't remember
DISPLAY=:0

zsh_source_files=(~/.zsh_my_settings/.*)

for source_file in $zsh_source_files
do
  source $source_file
done

# TODO up-to-date-with-lead-branch.sh - check on commit for updates to 'master' or whatever the lead branch is
# TODO git checkout -b thing could do with quietly setting upstream
# TODO gc (in zsh functions)
# TODO run the below weekly?
# TODO or have a re-think of how to manage all of this lot.
# antibody bundle < ~/.zsh_plugins > ~/.zsh_plugins.sh
# antibody update
#
# source ~/.zsh_plugins.sh
#

export EDITOR=vim
# When autosuggestions was broke I uninstalled and did this
# https://r0ngsh3n.github.io/common/zsh-manjaro/
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
