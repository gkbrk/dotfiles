(ensure-installed-one 'multiple-cursors)
(require 'multiple-cursors)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C-l") 'mc/mark-next-like-this)
(global-set-key (kbd "C-h") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-S-h") 'mc/mark-all-like-this)
