(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(setq flycheck-highlighting-mode 'symbols)

(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
(setq flycheck-emacs-lisp-load-path load-path)

(provide 'setup-flycheck)
