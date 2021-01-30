(require 'multiple-cursors)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-M->") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-M-<") 'mc/edit-beginnings-of-lines)

(global-set-key (kbd "C-c C-r") 'mc/mark-all-dwim)

(provide 'setup-multiple-cursors)
