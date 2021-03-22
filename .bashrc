export TERM=screen-256color

export EDITOR='vim'

# Unlimited bash history
export HISTFILESIZE=
export HISTSIZE=
export HISTCONTROL=erasedups

alias server="ssh root@server.gkbrk.com"
alias proxy="ssh -D 1080 root@server.gkbrk.com"
alias sb="source ~/.bashrc"

alias bc='bc -l'
alias tarbackup='tar -zcvf "backup-$(date "+%Y-%m-%d-%H-%M").tar.gz"'
alias :wq=exit
alias emacs="emacs -nw"

journal() {
    vim "$HOME/TinySync/Journal/$(date -I)"
}

stopwatch() {
    date1=`date +%s`
    while true
    do echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r"
    done
}

stty stop undef
stty start undef
