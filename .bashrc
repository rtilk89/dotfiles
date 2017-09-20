PS1="\u:\w > "
export PS1

alias ls="ls -hG"

# added by Miniconda3 4.3.14 installer
export PATH="/Users/ryanthielke/miniconda3/bin:$PATH"

export BROWSER="Safari"

# if nothin in manual [man]. terminal searches help
man() {
/usr/bin/man $@ || (help $@ 2> /dev/null && help $@ | less )
}

# Bash history stuff
export HISTCONTROL=ignoreboth:erasedups
export HISTFILESIZE=20000
export HISTSIZE=10000

shopt -s histappend
shopt -s cmdhist

# Vim default text editor
export VISUAL=vim
export EDITOR="$VISUAL"

# personal aliases
alias v=vim
alias vi=vim

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
