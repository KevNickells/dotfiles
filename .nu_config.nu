# show todo on startup
echo 'Pending bitness...'
ultralist l

# you know what it is
alias vim = nvim

# nu-specific
alias nuconf = vim ~/.nu_config.nu
alias update_nu = source ~/.nu_config.nu
alias showconf = open ~/.nu_config.nu
alias nunotes = vim ~/nu_shell_stuff/notes.nu

# for angular local server with latest ssl
let-env NODE_OPTIONS = --openssl-legacy-provider;

# copied from zsh config
alias work = cd ~/RAP
alias Z = exit
alias gst = git status
alias ngs = ng serve
alias ngso = ng serve --open
alias gb = git branch -a
alias gc = git_add_commit_push # hoisting!


# new to nu
alias ts = taylor_business
alias dcl = docker_clean
alias dps = docker ps --format 'table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}'
alias cmpl = command_complete
alias hist = search_history
alias kub = kubectl
alias kill = shutdown now
alias restart = reboot

# ultralist shortcuts
def add_to_todo [to_add] {
  ultralist add $to_add
}

def delete_from_todo [to_del] {
  ultralist delete $to_del
}

def complete_todo [to_complete_id] {
  ultralist complete $to_complete_id
}

alias td = ultralist list
alias tda = add_to_todo
alias tdd = delete_from_todo
alias tdc = complete_todo
alias tdo = ultralist up
alias tdu = ultralist prioritize
# alias tdp = list_project


def search_history [search_for] {
  history | get 'command' | where ($it | str contains $search_for)
}

def command_complete [] {
  notify-send "Command exited"
}

def docker_clean [] {
  docker ps -a -q | lines | each {|it| docker stop $it}
  docker ps -a -q | lines | each {|it| docker rm $it}
  docker images -a -q | lines | each {|it| docker rmi $it -f}
  docker network prune -f
  # Would make sense to disinclude generic images
}


def taylor_business [] {
  cd ~/ts/in_progress/
  vim Kev_Nickells_-_Taylor_Swift_for_adults.tex
}


def jenkins [] {
  vivaldi-stable http://localhost:8080 | ignore
  ssh -L 8080:localhost:8080 jenkins
}

def git_add_commit_push [message: string] {
  let status = (git status -z | into string)

  echo $"adding / committing / pushing \n($status)"

  git add .
  git commit -m $message
  git push
}


