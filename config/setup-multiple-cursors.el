(require 'multiple-cursors)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-M->") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-M-<") 'mc/edit-beginnings-of-lines)

;; Power rename :-)
(global-set-key (kbd "C-c C-c C-r") 'mc/mark-all-dwim)

(require 'sgml-mode)
(define-key sgml-mode-map (kbd "C-c C-r") 'mc/mark-sgml-tag-pair)

(provide 'setup-multiple-cursors)
