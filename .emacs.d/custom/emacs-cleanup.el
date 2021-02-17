(defun leo/clean-elisp-bytecode ()
  "Clean .elc files in .emacs.d"
  (interactive)
  (shell-command "find ~/.emacs.d/ -type f -name '*.elc' -exec rm '{}' \\;"))
