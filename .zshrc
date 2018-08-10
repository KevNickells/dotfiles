# TODO = vim / git / open modified files
# TODO cath to cat only the head

# My tings
#
plugins=(
  git
  zsh-autosuggestions
  history-substring-search 
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

# Because Vim
alias ZZ="exit"
alias jj="pwd"

# Hopefully temporary thing; remove npm logs before doing a git status. This is
# in lieu of faffing about with npm. 
function gst {
raw=(npm-debug*)
count=${#raw[@]}
if (( count > 0 ))  
  then
    rm npm-debug* 
  fi;
  git status
}

function killy {
  processes=$(pgrep ruby)
  kill -9 $processes;
  runathena
 }

# Because lazy
alias v="vim"
alias ga="git add"
alias gc="git commit -m"
alias gpsh="git push"
alias gp="git pull"
alias o="open"
alias c="clear"

# Iris lazy
alias runathena='nvm use; PORT=3000 bundle exec foreman start --procfile Procfile.dev'
#doubly lazy
alias rat='runathena'
alias ra='runathena'
alias ag='cd ~/agora'
alias at='cd ~/agora/athena'

# Because stealing ideas from others   
alias ll="ls -lhA"

alias cath="head -10"

# Config yute dem
# Nice colours for grep
alias grep='grep --color=auto'

# nice colours for git log
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/kev/.oh-my-zsh"

ZSH_THEME="random"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# see 'man strftime' for details; time format
HIST_STAMPS="dd.mm.yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
setopt hist_ignore_all_dups

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
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

# NOTE RElies upon ripgrep, install with  brew install reipgrep
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
source $HOME/.zshenv

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
