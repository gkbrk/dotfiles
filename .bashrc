#export TERM=xterm-256color
export TERM=screen-256color
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

export GOPATH=~/.go
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:~/Android/Sdk/tools/"
export PATH="$PATH:$(ruby -rubygems -e "puts Gem.user_dir")/bin"

export ANDROID_HOME="/home/leonardo/Android/Sdk"

# Unlimited bash history
export HISTFILESIZE=
export HISTSIZE=
export HISTCONTROL=erasedups

alias listenmoe="mpv http://listen.moe:9999/stream > /dev/null"

alias server="ssh core@gkbrk.com"
alias proxy="ssh -D 1080 core@gkbrk.com"
alias sb="source ~/.bashrc"

cowerinstall() {
    pushd ~/cower/
    rm -rfv "$1"
    cower -d "$1"
    cd "$1"
    makepkg -sri
    popd
}

export TODOTXT_DEFAULT_ACTION=ls
alias t='todo.sh -d ~/.todo/config'

alias ed='ed -p"🔥 > "'
alias bc='bc -l'
alias tarbackup='tar -zcvf "backup-$(date "+%Y-%m-%d-%H-%M").tar.gz"'
alias :wq=exit

notebook() {
    pushd /home/leonardo/Notebook
    vim Home.txt
    popd
}

journal() {
    vim "$HOME/Notebook/Journal/$(date +%Y/%Y-%m-%d).txt"
}

stty stop undef
stty start undef
