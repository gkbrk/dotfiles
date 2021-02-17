(defun leo/load-file (file)
  "Load an elisp file from .emacs.d"
  (load (concat "~/.emacs.d/" file)))

(defun leo/load-idle (sec file)
  "Load a file after N idle seconds"
  (run-with-idle-timer sec nil 'leo/load-file file))

(provide 'leo-load)
