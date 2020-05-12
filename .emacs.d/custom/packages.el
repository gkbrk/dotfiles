(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3") ; ELPA is weird

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(defvar package-contents-refreshed nil)

(defun package-refresh-contents-once ()
  (when (not package-contents-refreshed)
    (setq package-contents-refreshed t)
    (package-refresh-contents)))

(defun ensure-installed (package)
  (when (not (package-installed-p package))
    (package-refresh-contents-once)
    (package-install package)))
