;;; Welcome to my .emacs file

;; GC trickery
(setq gc-cons-threshold (eval-when-compile (* 1024 1024 1024)))
(run-with-idle-timer 2 t (lambda () (garbage-collect)))

;;; At startup, byte-compile every elisp file that changed.
(add-to-list 'load-path "~/.emacs.d/custom-load/")
(byte-recompile-directory "~/.emacs.d" 0)
;;(profiler-start 'cpu)

;;(load-theme 'misterioso)
(load-theme 'adwaita)

(require 'leo-load)

;;; We will be using the load-idle function to load elisp files based on
;;; priority. Important config and user-visible changes will be loaded first to
;;; prevent flickering.

(run-with-idle-timer 1 nil (lambda () "" (message "Everything in idle-config is initialized")))
(leo/load-idle 1 "custom/basic-settings")
(leo/load-idle 1 "custom/move-line")
(leo/load-idle 1 "custom/relative-lines")
(leo/load-idle 1 "custom/whitespace")
(leo/load-idle 1 "custom/windows-fixes")
(leo/load-idle 1 "custom/multiple-cursors")
(leo/load-idle 1 "custom/evil-mode")
(leo/load-idle 1 "custom/wl-clipboard")
(leo/load-idle 1 "custom/emacs-cleanup")

(require 'leo-packages)
(ensure-installed
  'aggressive-indent
  'company-try-hard
  'haskell-mode
  'json-mode
  'magit
  'markdown-mode
  'rust-mode
  'web-mode)

(setq inhibit-startup-screen t)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)

; Disable backup files
(setq make-backup-files nil)
(setq-default fill-column 80)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Iosevka" :foundry "BE5N" :slant normal :weight normal :height 143 :width normal)))))

;(profiler-stop)
;(profiler-report)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(multiple-cursors evil web-mode rust-mode markdown-mode magit json-mode haskell-mode company-try-hard aggressive-indent)))
