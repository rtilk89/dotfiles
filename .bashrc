PS1="\u:\w > "
export PS1

alias ls="ls -hG"

# Cause brew doctor was complaining
export PATH="/usr/local/sbin:$PATH"

export PATH="~/bin:$PATH"

# if nothin in manual [man]. terminal searches help
man() {
/usr/bin/man $@ || (help $@ 2> /dev/null && help $@ | less )
}

# Bash history stuff
export HISTCONTROL=ignoreboth:erasedups
export HISTFILESIZE=200000
export HISTSIZE=100000

shopt -s histappend
shopt -s cmdhist

# Vim default text editor
export VISUAL=vi
export EDITOR="$VISUAL"
alias v='vim'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

listpath() {
  echo $PATH | awk '{n=split($0, a, ":"); for(i=1;i<n;i++){print i, a[i]}}'
}

alias e='emacs-26.1 -nw'
alias rb='. ~/.bash_profile'
alias eb='e ~/.bash_profile'
alias ee='e ~/.emacs'
alias vim='emacsclient -nw'
alias vi='emacsclient -nw'
#alias vi='/usr/bin/vim'
#alias v='/usr/bin/vim'
alias doom="~/.emacs.d/bin/doom"


# History
export HISTCONTROL=ignoredups:ignorespace

shopt -s histappend

if [ "$TERM" != "dumb" ]; then
    bind '"\C-p": history-search-backward'
    bind '"\C-n": history-search-forward'
    bind '"\M-p": history-search-backward'
    bind '"\M-n": history-search-forward'
fi

export HISTSIZE=100000000
export HISTFILESIZE=100000000

export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# emacs stuff
get_edaemon_pid() {
    ps -ef | awk '{if($0~/emacs --daemon/&&$0!~/awk/){print $2}}'
}

edaemon() {
    # will print the pid of the emacs daemon if running
    pid=$(get_edaemon_pid)
    if [[ -n $pid ]]; then
        echo 'daemon running'
    else
        echo 'starting emacs daemon' && emacs --daemon
    fi
}

restart_edaemon() {
    pid=$(get_edaemon_pid)
    if [[ -n $pid ]]; then
        echo "restarting emacs daemon"
        kill -9 $pid
        emacs --daemon
    else
        echo "cannot restart the emacs daemon"
    fi
}

# Bash completions
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
