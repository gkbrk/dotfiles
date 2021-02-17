;;; This file automatically installs and activates my emacs theme.
(require 'leo-packages)
(setq custom-safe-themes t)
(ensure-installed 'gruber-darker-theme)
(load-theme 'gruber-darker t)
