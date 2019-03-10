source ~/.zsh_exports
source ~/.zsh_functions
source ~/.zsh_aliases
source ~/.zsh_my_settings

# TODO - need to figure out if the below are eecessary
source ~/
source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# TODO Get rid of the kev@computer stuff from the shell $(powerline-shell --shell zsh $?)
# TODO automatically update Linux? sudo pacman -Syu
# TODO Hoglet scripted to oopen sepaerate shells etc
# TODO source this file on close rather than manually?
# TODO script start-hoglet to open a new tmux sesssion, split panes, run server
#
# tmux # start tmux on start up - this is going to need a bit of thinking before I can commit to it.

# open last files amended in vim; get list, replace \n with ' ', pass to vim. Sweet.
# Except it's not working in anything except root. Boo. TODO
# May have shegged other things
# alias vr="git show --pretty='' --name-only HEAD | tr '\n' ' ' | xargs vim"
# Ignores duplicates history
#
# NOTE this file is sourced on closing within ~/.vim-functions-and-commands
