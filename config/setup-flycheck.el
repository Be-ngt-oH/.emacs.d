(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Use pos-tip for displaying flycheck errors
(eval-after-load 'flycheck
  '(custom-set-variables
    '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))

;; Maybe change to 'lines later on
(setq flycheck-highlighting-mode nil)

(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
(setq flycheck-emacs-lisp-load-path load-path)

(provide 'setup-flycheck)
