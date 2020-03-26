; MELPA Packages

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3") ; ELPA is weird

(defun load-directory (dir)
  (let ((load-it (lambda (f)
                   (load-file (concat (file-name-as-directory dir) f)))
                 ))
    (mapc load-it (directory-files dir nil "\\.el$"))))
(load-directory "~/.emacs.d/custom/")

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

; Packages to auto-install on startup
(dolist (p '(use-package))
  (when (not (package-installed-p p)) (package-install p)))

(require 'use-package)

(use-package evil
  :ensure t
  :defer t
  :config (evil-mode 1))

(use-package company-try-hard :ensure t)
(use-package aggressive-indent
  :ensure t
  :defer t)
(use-package json-mode :ensure t :mode "\\.json\\'")
(use-package magit
  :ensure t
  :defer t)
(use-package rust-mode :ensure t :mode "\\.rs\\'")
(use-package csharp-mode :ensure t :mode "\\.cs\\'")
(use-package haskell-mode :ensure t :mode "\\.hs\\'")
(use-package markdown-mode :ensure t :mode "\\.md\\'")
(use-package todotxt :ensure t :defer t)

(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(global-set-key (kbd "M-+") 'next-buffer)
(global-set-key (kbd "M--") 'previous-buffer)
(global-set-key (kbd "C-t") 'ido-switch-buffer)

; Disable backup files
(setq make-backup-files nil)

(setq confirm-kill-processes nil)

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
             :ensure t
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
  :ensure t
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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(column-number-mode t)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes '(adwaita))
 '(custom-safe-themes
   '("89dd0329d536d389753111378f2425bd4e4652f892ae8a170841c3396f5ba2dd" "190a9882bef28d7e944aa610aa68fe1ee34ecea6127239178c7ac848754992df" "e11569fd7e31321a33358ee4b232c2d3cf05caccd90f896e1df6cab228191109" "599f1561d84229e02807c952919cd9b0fbaa97ace123851df84806b067666332" default))
 '(fci-rule-color "#383838")
 '(inhibit-startup-screen t)
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(package-selected-packages
   '(typescript-mode prettier-js web-mode use-package todotxt rust-mode neotree markdown-mode magit json-mode haskell-mode evil csharp-mode company-try-hard aggressive-indent))
 '(show-paren-mode t)
 '(todotxt-file "~/TinySync/todo.txt" nil (todotxt))
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   '((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3")))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 158 :width normal)))))
