; MELPA Packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(setq-default indent-tabs-mode nil)
(ido-mode 1)
(global-set-key (kbd "M-+") 'next-buffer)
(global-set-key (kbd "M--") 'previous-buffer)
(global-set-key (kbd "C-t") 'ido-switch-buffer)

(defun fancy-tab (arg)
  (interactive "P")
  (setq this-command last-command)
  (if (or (eq this-command 'company-try-hard) (looking-at "\\_>"))
      (progn
	(setq this-command 'company-try-hard)
	(company-try-hard))
    (setq this-command 'indent-for-tab-command)
    (indent-for-tab-command arg)))
(global-set-key (kbd "TAB") 'fancy-tab)
(add-hook 'after-init-hook 'global-company-mode)

; Disable backup files
(setq make-backup-files nil)

(setq-default fill-column 80)
(global-linum-mode t)

; Evil mode
(require 'evil)
(evil-mode 1)
(global-set-key (kbd "M-=") 'evil-mode)

(require 'todotxt)

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "firefox-nightly")

(setq org-agenda-files '("~/Notebook/"))
(setq org-agenda-skip-unavailable-files t)
(setq org-log-done 'time)

(defun org-archive-done-tasks ()
  (interactive)
  (org-map-entries
   (lambda ()
     (org-archive-subtree)
     (setq org-map-continue-from (outline-previous-heading)))
   "/DONE" 'file))

(require 'org)
(add-to-list 'org-latex-packages-alist '("" "minted"))
(setq org-latex-listings 'minted) 

(setq org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

(setq org-src-fontify-natively t)

(setq easy-hugo-basedir "~/Desktop/website/blog/")

(defun notes ()
  (interactive)
  (find-file "~/Notebook/notes.org")
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
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes (quote (deeper-blue)))
 '(custom-safe-themes
   (quote
    ("e11569fd7e31321a33358ee4b232c2d3cf05caccd90f896e1df6cab228191109" "599f1561d84229e02807c952919cd9b0fbaa97ace123851df84806b067666332" default)))
 '(fci-rule-color "#383838")
 '(inhibit-startup-screen t)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (company-try-hard company json-mode haml-mode magit neotree web-mode easy-hugo haskell-mode todotxt zenburn-theme rust-mode tabbar markdown-mode evil)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(send-mail-function (quote smtpmail-send-it))
 '(todotxt-file "/home/leonardo/Sync/default/todo.txt" nil (todotxt))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
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
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
