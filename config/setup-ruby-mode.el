(require 'ruby-mode)

(setq ruby-insert-encoding-magic-comment nil
      ruby-align-to-stmt-keywords t)

;; Loading inf-ruby so it does its autoload thing and we can remove it here.
(require 'inf-ruby)
(delete 'inf-ruby-minor-mode ruby-mode-hook)

(provide 'setup-ruby-mode)
