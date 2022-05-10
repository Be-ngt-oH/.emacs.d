(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
(setq flycheck-global-modes '(not typescript-mode js-mode))

(setq flycheck-highlighting-mode 'symbols)

(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
(setq flycheck-emacs-lisp-load-path load-path)

(add-hook 'flycheck-mode-hook 'flycheck-popup-tip-mode)

(provide 'setup-flycheck)
