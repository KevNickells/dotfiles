# TODO git diff -show-names could use a shortcut because I can't remember it.
# TODO o to take a param and if text/html then
# TODO automatically update Linux? sudo pacman -Syu
# TODO Hoglet scripted to oopen sepaerate shells etc
# TODO If / else for Windows > Linux / Actual Linux
# TODO remove the themes that refer to rbenv / rvm
#
tmux # start tmux

SYSTEM=$(uname)

# My tings
plugins=(
  git
  zsh-autosuggestions
  history-substring-search
  git battery
)

# Because who needs to type accurately?
alias insatll=install
alias isntall=install
alias cd..='cd ..'
alias ./='~/.'
alias ..='cd ../'
alias ...='cd ~/'
alias rspect='rspec'
alias fidd='diff'
alias hsk='stack ghci'
# alias v*='v *'

# Because I won't remember these commands
alias zs="vim ~/.zshrc"
alias sz="source ~/.zshrc" # should this be an on close for the file?

# Because Vim
alias ZZ="exit"
alias jj="pwd"

#alias o="open_this_folder"
#alias o="/mnt/c/Windows/explorer.exe"
# TODO this is going to need some work in that it'll need to look at where the system is mounted, then append the address on the end.
#function open_this_folder {
#  FOLDER="$(pwd)"
#  /mnt/c/Windows/explorer.exe FOLDER
#}

# open current folder; note that functions don't seem to work as single letters
# This will need some thought re: being on Windows & Linux
# function open_this_folder {
#   if [ "$SYSTEM" = "Linux" ]; then
#     dolphin </dev/null &>/dev/null . &
#   elif [ "$SYSTEM" = "Darwin" ]; then
#     open .
#   else
#     echo "check open_this_folder() in .zshrc; $SYSTEM is not a recognised system"
#   fi
# }


# Because lazy
alias v="vim"
alias ga="git add"
alias gc="git commit -m"
alias gpsh="git push"
alias gp="git pull --recurse-submodules"
alias grf="git show --pretty='' --name-only HEAD" # git last files amended
alias lg="lazygit"
alias c="clear"
alias cath="head -10"
alias b="xdg-open"
alias py="python3"

# open last files amended in vim; get list, replace \n with ' ', pass to vim. Sweet.
# Except it's not working in anything except root. Boo. TODO
# May have shegged other things
# alias vr="git show --pretty='' --name-only HEAD | tr '\n' ' ' | xargs vim"

# Because stealing ideas from others
alias ll="ls -lhA"

# Nice colours for grep
alias grep='grep --color=auto'

# nice colours for git log
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# Do I need these things?

# Add RVM to PATH for scripting.
export PATH="$PATH:$HOME/.rvm/bin"
# More pathery
export PATH="$PATH:$HOME/.gem/ruby/2.5.0/bin"


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="random"

# hyphen insensitive completion
HYPHEN_INSENSITIVE="true"

# enable auto-correction.
ENABLE_CORRECTION="true"

# red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# time format
HIST_STAMPS="dd.mm.yyyy"

# Ignores duplicates history
setopt hist_ignore_all_dups

source ~/
source $ZSH/oh-my-zsh.sh
# TODO need to think about this in terms of Windows / Linux
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-autosuggestions

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# NOTE relies upon ripgrep, install with  install ripgrep
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh
# source $HOME/.zshenv

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# for TILIX terminal
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi
