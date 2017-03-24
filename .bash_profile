# Set the ulimit (simultaneous number of open files) to a higher value than default to avoid npm install issues etc. #
ulimit -S -n 2048
##############

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
    #export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \W\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
    export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \W\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
    #export PS1='\[\033[01;32m\]\u \W\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
    export GIT_PS1_SHOWDIRTYSTATE=1
fi

[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh" # Load NVM into shell sessions
[ -s "/Users/rluong/.dnx/dnvm/dnvm.sh" ] && . "/Users/rluong/.dnx/dnvm/dnvm.sh" # Load dnvm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

alias lol='git log --graph --oneline'

[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

##
# Your previous /Users/rluong/.bash_profile file was backed up as /Users/rluong/.bash_profile.macports-saved_2016-10-02_at_23:14:35
##

# MacPorts Installer addition on 2016-10-02_at_23:14:35: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages
# Finished adapting your PATH environment variable for use with MacPorts.

eval "$(pyenv init -)"

eval "$(docker-machine env dev)"

