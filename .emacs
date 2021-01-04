(defun load-directory (dir)
  (let ((load-it (lambda (f)
                   (load-file (concat (file-name-as-directory dir) f)))
                 ))
    (mapc load-it (directory-files dir nil "\\.el$"))))
(load-directory "~/.emacs.d/custom/")

(ensure-installed
  'aggressive-indent
  'company-try-hard
  'evil
  'haskell-mode
  'json-mode
  'magit
  'markdown-mode
  'rust-mode
  'web-mode
  'yasnippet
  )

; Theme
(setq custom-safe-themes t)
(ensure-installed 'gruber-darker-theme)
(load-theme 'gruber-darker t)

(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(global-set-key (kbd "M-+") 'next-buffer)
(global-set-key (kbd "M--") 'previous-buffer)
(global-set-key (kbd "C-t") 'ido-switch-buffer)

(setq inhibit-startup-screen t)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)
(column-number-mode t)
(show-paren-mode)

; Disable backup files
(setq make-backup-files nil)

(setq confirm-kill-processes nil)
(global-auto-revert-mode t)


(setq-default fill-column 80)

; Evil mode
(global-set-key (kbd "M-=") 'evil-mode)

(setq inferior-lisp-program "sbcl")

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "firefox-nightly")

(defun notes ()
  (interactive)
  (find-file "~/TinySync/notes.org")
  )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Iosevka" :foundry "BE5N" :slant normal :weight normal :height 143 :width normal)))))
