;; Basic settings

;; Show the column number in the modeline, next to the line number.
(column-number-mode t)

;; Highlight matching parenthesis and brackets.
(show-paren-mode)

(setq confirm-kill-processes nil)

;; global-auto-revert-mode makes it so that when a file changes on disk, it is
;; automatically reloaded on emacs.
(global-auto-revert-mode t)

;; Emacs sentences end in double-spaces by default. While this might be more
;; elegant and correct, I am used to sentences ending in a single space.
(setq sentence-end-double-space nil)

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "firefox")

(defun my/notes ()
  (interactive)
  (find-file "~/TinySync/notes.org"))

;; Things should be indented with 4 spaces by default.
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
