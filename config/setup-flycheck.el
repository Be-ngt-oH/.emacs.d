(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Use pos-tip for displaying flycheck errors
(with-eval-after-load 'flycheck
  (flycheck-pos-tip-mode))

(setq flycheck-highlighting-mode 'symbols)

(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
(setq flycheck-emacs-lisp-load-path load-path)

(provide 'setup-flycheck)
