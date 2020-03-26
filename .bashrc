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

PATH="/home/leo/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/leo/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/leo/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/leo/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/leo/perl5"; export PERL_MM_OPT;
