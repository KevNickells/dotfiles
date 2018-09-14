# :vim set tw=0
# ~/.gitignore_global
# At some point in the future I will wonder why something hasn't updated when it
# should have. The above is the command that adds something to a global ignore
# file, outside of the current project. This was a 'hopefully temporary'
# workaround. I hope this helps you, future me

# TODO look into open new tab > rails s > run athenaspecs in this tab
# Wiundow one:
# nvm use; ./node_modules/.bin/webpack-dev-server --config config/webpack.config.js --host 0.0.0.0
# Window two: rails s
#
# TODO git diff -show-names could use a shortcut because I cna't remember it.
# TODO should probably sepearate Linux / Mac set-up, move work stuff into a specific, private file
# also probably as well to separate aliases / functions / vars / plugins
# TODO look up :h terminal; :term zsh will open a zsh; looks like there's a debugger function that might be useful
# TODO file-specific disable red 80c+

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

# check running processes
processes="lsof -wni tcp:3000"

# Because I won't remember these commands
alias zs="vim ~/.zshrc"
alias sz="source ~/.zshrc"
alias rs="rails server -e development -b 0.0.0.0 -p 3000"
alias e="eval"

# Because Vim
alias ZZ="exit"
alias jj="pwd"

# open current folder; note that functions don't seem to work as single letters
function open_this_folder {
  if [ "$SYSTEM" = "Linux" ]; then
    dolphin </dev/null &>/dev/null . &
  elif [ "$SYSTEM" = "Darwin" ]; then
    open .
  else
    echo "check open_this_folder() in .zshrc; $SYSTEM is not a recognised system"
  fi
}

# function new_tab_with_rails {
#   osascript
#   tell application "iTerm"
#     activate
#     tell current session of current window to write text "pwd"
#     tell current window to set tb to create tab with default profile
#     tell current session of current window to set newSplit to split horizontally with same profile
#     tell newSplit
#       select
#       write text "pwd"
#     end tell
#   end tell
#   EOF"
# }



# Linux shell Doesn't open here TODO but it should
if [ "$SYSTEM" = "Linux" ]; then
  cd ~/
fi

# Hopefully temporary thing; remove npm logs before doing a git status. This is
# in lieu of faffing about with npm. Needs to have quiet output TODO
function gst {
  count = ls npm-debug* -l | wc -l
  if (( count > 0 ))
  then
    rm npm-debug*
  fi;
  git status
}


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
alias o="open_this_folder"
# open last files amended in vim; get list, replace \n with ' ', pass to vim. Sweet.
# Except it's not working in anything except root. Boo. TODO
# May have shegged other things
# alias vr="git show --pretty='' --name-only HEAD | tr '\n' ' ' | xargs vim"

# kill off local server running & restart
alias atr='kill -9 $(pgrep ruby); at; runathena'

alias runathena="nvm use; ./node_modules/.bin/webpack-dev-server --config config/webpack.config.js --host 0.0.0.0"

#doubly lazy
alias ag='cd ~/agora'
alias at='cd ~/agora/athena'

# Because stealing ideas from others
alias ll="ls -lhA"

# Config yute dem
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

# This will need looking at for Linux
if [ "$SYSTEM" = "Darwin" ]; then
  source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# For a full list of active aliases, run `alias`.
  # IRIS config

# NOTE relies upon ripgrep, install with  install ripgrep
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh
source $HOME/.zshenv

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
