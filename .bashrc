export TERM=screen-256color
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

export GOPATH=~/.go
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:~/.cargo/bin/"
export PATH="$PATH:/home/leonardo/.gem/ruby/2.6.0/bin"
export PATH="$PATH:~/.local/bin"

# Unlimited bash history
export HISTFILESIZE=
export HISTSIZE=
export HISTCONTROL=erasedups

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

alias ed='ed -p"> "'
alias emacs='emacsclient -nw'
alias bc='bc -l'
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

notebook() {
    pushd /home/leonardo/Notebook
    vim Home.md
    popd
}

journal() {
    vim "$HOME/Notebook/Journal/$(date +%Y-%m-%d).md"
}

notebook_todo() {
    echo "\`\`\`" > "$HOME/Notebook/NotebookTasks.md"
    grep -r "TODO" "$HOME/Notebook" | sed "s@$HOME/Notebook/@@" >> "$HOME/Notebook/NotebookTasks.md"
    echo "\`\`\`" >> "$HOME/Notebook/NotebookTasks.md"
}

keychain-lock() {
    python3 -c 'import secretstorage;bus=secretstorage.dbus_init();secretstorage.get_default_collection(bus).lock()'
}

stty stop undef
stty start undef
