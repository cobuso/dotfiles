alias flushdns="sudo dscacheutil -flushcache"

alias vu="vagrant up"
alias vh="vagrant halt"
alias vssh="vagrant ssh"
alias vp="vagrant provision"

alias r="rspec spec"

alias vi='mvim -v'
alias vim='mvim -v'

alias g="git"
alias gs="git status --ignore-submodules=dirty"
alias gp="git pull"
alias gpush="git push"

alias scheme="/Applications/MIT\:GNU\ Scheme.app/Contents/Resources/mit-scheme"

export PATH="~/Tools/git-deploy/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export NODE_PATH="/usr/local/lib/node:$NODE_PATH"

export RUBYOPT=rubygems
export COPYFILE_DISABLE=true

# RVM
[[ -s "/Users/tom/.rvm/scripts/rvm" ]] && source "/Users/tom/.rvm/scripts/rvm"  # This loads RVM into a shell session.
