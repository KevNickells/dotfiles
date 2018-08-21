SYSTEM=$(uname)

# Because my shell on Linux doesn't open here and I can't be bothered to make to
# do otherwise
cd ~/

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
alias rspect='rspec'

# check running processes
processes="lsof -wni tcp:3000"

# Because I won't remember these commands
alias zs="vim ~/.zshrc"
alias sz="source ~/.zshrc"
alias rs="rails server -e development -b 0.0.0.0 -p 3000"

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


# Because Vim
alias ZZ="exit"
alias jj="pwd"

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
alias gp="git pull"
alias grf="git show --pretty='' --name-only HEAD" # git last files amended
alias vr="v `git show --pretty='' --name-only HEAD | tr '\n' ' '`" # open last files amended in vim; nearly working, just need to lop off root folder
alias c="clear"
alias cath="head -10"
alias o="open_this_folder"
# kill off local server running & restart
alias atr='kill -9 $(pgrep ruby); at; runathena'

# Iris lazy
alias runathena='nvm use; PORT=3000 bundle exec foreman start --procfile Procfile.dev'

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

# User configuration
# You may need to manually set your language environment
export LANG=en_US.UTF-8

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.

# For a full list of active aliases, run `alias`.
  # IRIS config

# NOTE RElies upon ripgrep, install with  install ripgrep
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
