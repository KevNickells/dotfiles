# Because who needs to type accurately?
alias insatll=install
alias isntall=install

# Because I won't remember these commands
alias eb="vim ~/.bashrc"
alias sb="source ~/.bashrc"

# Because Vim
alias ZZ="exit"

# Because lazy
alias v="vim"
alias gst="git status"
alias ga="git add"
alias gc="git commit"
alias gpsh="git push"
alias o="open"

# Because stealing
alias ll="ls -lhA"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
