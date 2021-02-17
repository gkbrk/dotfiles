(require 'package)

(defvar package-contents-refreshed nil)
(defvar packages-initialized nil)

(defun package-initialize-once ()
  (when (not packages-initialized)
    (setq packages-initialized t)
    (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3") ; ELPA is weird
    (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
    (package-initialize)))

(defun package-refresh-contents-once ()
  (when (not package-contents-refreshed)
    (setq package-contents-refreshed t)
    (package-refresh-contents)))

(defun ensure-installed-one (package)
  (when (not (package-installed-p package))
    (package-initialize-once)
    (package-refresh-contents-once)
    (package-install package)))

(defun ensure-installed (&rest packages)
  (dolist (package packages)
    (ensure-installed-one package)))

(provide 'leo-packages)
