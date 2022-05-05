(require 'corfu)

(global-corfu-mode)
(setq corfu-auto t)
(setq corfu-preview-current nil)

(require 'orderless)
(setq completion-styles '(orderless basic)
      completion-category-defaults nil
      completion-category-overrides '((file (styles . (partial-completion)))))
(define-key corfu-map (kbd "SPC") 'corfu-insert-separator)

(provide 'setup-corfu)
