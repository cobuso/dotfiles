alias flushdns="sudo dscacheutil -flushcache"

alias vim="mvim"

alias vu="vagrant up"
alias vh="vagrant halt"
alias vssh="vagrant ssh"

alias g="git"
alias gs="git status --ignore-submodules=dirty"
alias gp="git pull"
alias gpush="git push"

export PATH="~/projects/git-deploy/bin:~/projects/cobuso/scripts:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/Applications:$PATH"
export NODE_PATH="/usr/local/lib/node:$NODE_PATH"

export RUBYOPT=rubygems
export COPYFILE_DISABLE=true

# RVM
[[ -s "/Users/tom/.rvm/scripts/rvm" ]] && source "/Users/tom/.rvm/scripts/rvm"  # This loads RVM into a shell session.
