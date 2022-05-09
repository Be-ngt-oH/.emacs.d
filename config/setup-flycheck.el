(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(setq flycheck-highlighting-mode 'symbols)

(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
(setq flycheck-emacs-lisp-load-path load-path)

(add-hook 'flycheck-mode-hook 'flycheck-popup-tip-mode)

(require 'flymake-diagnostic-at-point)
(add-hook 'flymake-mode-hook #'flymake-diagnostic-at-point-mode)

(provide 'setup-flycheck)
