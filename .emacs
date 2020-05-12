(defun load-directory (dir)
  (let ((load-it (lambda (f)
                   (load-file (concat (file-name-as-directory dir) f)))
                 ))
    (mapc load-it (directory-files dir nil "\\.el$"))))
(load-directory "~/.emacs.d/custom/")

(dolist (p '(
             use-package
             evil
             company-try-hard
             aggressive-indent
             json-mode
             magit
             rust-mode
             csharp-mode
             haskell-mode
             markdown-mode
             todotxt
             web-mode
             ))
  (ensure-installed p))

(setq custom-safe-themes t)
(ensure-installed 'gruber-darker-theme)
(load-theme 'gruber-darker t)

(require 'use-package)

(use-package evil
  :defer t
  :config (evil-mode 1))

(use-package company-try-hard)
(use-package aggressive-indent :defer t)
(use-package json-mode :mode "\\.json\\'")
(use-package magit :defer t)
(use-package rust-mode :mode "\\.rs\\'")
(use-package csharp-mode :mode "\\.cs\\'")
(use-package haskell-mode :mode "\\.hs\\'")
(use-package markdown-mode :mode "\\.md\\'")
(use-package todotxt :defer t)

(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(global-set-key (kbd "M-+") 'next-buffer)
(global-set-key (kbd "M--") 'previous-buffer)
(global-set-key (kbd "C-t") 'ido-switch-buffer)

(setq inhibit-startup-screen t)
(tool-bar-mode -1)

; Disable backup files
(setq make-backup-files nil)

(setq confirm-kill-processes nil)
(global-auto-revert-mode t)


(setq-default fill-column 80)
(column-number-mode t)
(show-paren-mode)

; Evil mode
(global-set-key (kbd "M-=") 'evil-mode)

(setq inferior-lisp-program "sbcl")

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "firefox-nightly")

; Web mode
(use-package web-mode
  :mode ("\\.phtml\\'"
         "\\.tpl\\.php\\'"
         "\\.[agj]sp\\'"
         "\\.as[cp]x\\'"
         "\\.erb\\'"
         "\\.mustache\\'"
         "\\.djhtml\\'"
         "\\.html?\\'"
         "\\.ejs\\'"
         "\\.js\\'"
         "\\.css\\'"
         "\\.cshtml\\'"))

; org mode
(use-package org
  :mode ("\\.org\\'" . org-mode)
  :init
  (setq org-agenda-skip-unavailable-files t)
  (setq org-log-done 'time)

  (defun org-archive-done-tasks ()
    (interactive)
    (org-map-entries
     (lambda ()
       (org-archive-subtree)
       (setq org-map-continue-from (outline-previous-heading)))
     "/DONE" 'file))

  (setq org-src-fontify-natively t))

(defun notes ()
  (interactive)
  (find-file "~/TinySync/notes.org")
  )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "FreeMono" :foundry "GNU " :slant normal :weight normal :height 158 :width normal)))))
