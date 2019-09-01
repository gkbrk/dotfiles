export TERM=screen-256color
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

export GOPATH=~/.go
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:~/.cargo/bin/"
export PATH="$PATH:/home/leonardo/.gem/ruby/2.6.0/bin"
export PATH="$PATH:~/.local/bin"
export EDITOR='nvim'

# Unlimited bash history
export HISTFILESIZE=
export HISTSIZE=
export HISTCONTROL=erasedups

alias server="ssh core@gkbrk.com"
alias proxy="ssh -D 1080 core@gkbrk.com"
alias sb="source ~/.bashrc"

export TODOTXT_DEFAULT_ACTION=ls
alias t='todo.sh -n -t -d ~/.config/todo.cfg'

alias ed='ed -p"> "'
alias bc='bc -l'
alias vim='nvim'
alias tarbackup='tar -zcvf "backup-$(date "+%Y-%m-%d-%H-%M").tar.gz"'
alias :wq=exit

org-text() {
    emacs --batch -l .emacs Notebook/notes.org --eval '(org-mode)' \
          --eval "(org-ascii-export-as-ascii nil nil nil nil '(:ascii-charset utf-8))" \
          --eval '(princ (buffer-string))'
}

org-search() {
    emacs --batch -l .emacs Notebook/notes.org --eval '(org-mode)' --eval "(search-forward \"$1\")" \
          --eval "(org-ascii-export-as-ascii nil t nil nil '(:ascii-charset utf-8))" \
          --eval '(princ (buffer-string))'
}

journal() {
    vim "$HOME/TinySync/Journal/$(date -I)"
}

stty stop undef
stty start undef
