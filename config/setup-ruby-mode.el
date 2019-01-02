;; Prevent auto-insertion of encoding comment on save
(setq-default ruby-insert-encoding-magic-comment nil)

(require 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)

(provide 'setup-ruby-mode)
