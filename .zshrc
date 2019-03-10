source .zsh_exports
source .zsh_functions
source .zsh_aliases
source .zsh_my_settings

# TODO - need to figure out if the below are eecessary
source ~/
source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# TODO lazygit looks useful. Would be nice if it displayed ok
# TODO Get rid of the kev@computer stuff from the shell $(powerline-shell --shell zsh $?)
# TODO git diff -show-names could use a shortcut because I can't remember it.
# TODO o to take a param and if text/html then
# TODO automatically update Linux? sudo pacman -Syu
# TODO Hoglet scripted to oopen sepaerate shells etc
# TODO If / else for Windows > Linux / Actual Linux
# TODO remove the themes that refer to rbenv / rvm
# TODO source this file on close rather than manually?
# TODO script start-hoglet to open a new tmux sesssion, split panes, run server
#
# tmux # start tmux on start up - this is going to need a bit of thinking before I can commit to it.

# open last files amended in vim; get list, replace \n with ' ', pass to vim. Sweet.
# Except it's not working in anything except root. Boo. TODO
# May have shegged other things
# alias vr="git show --pretty='' --name-only HEAD | tr '\n' ' ' | xargs vim"
# Ignores duplicates history
