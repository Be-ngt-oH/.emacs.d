(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
(setq flycheck-global-modes '(not typescript-ts-mode tsx-ts-mode js-mode javascript-mode js-ts-mode js-jsx-mode))

(setq flycheck-highlighting-mode 'symbols)

(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
(setq flycheck-emacs-lisp-load-path load-path)

(add-hook 'flycheck-mode-hook #'flycheck-posframe-mode)

(provide 'setup-flycheck)
