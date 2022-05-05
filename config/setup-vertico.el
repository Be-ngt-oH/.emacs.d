(require 'vertico)

(vertico-mode)

(require 'orderless)
(setq completion-styles '(orderless basic)
      completion-category-defaults nil
      completion-category-overrides '((file (styles partial-completion))))

(require 'marginalia)
(marginalia-mode)
(define-key minibuffer-local-map (kbd "M-a") 'marginalia-cycle)
(mapc
 (lambda (x)
   (setcdr x (cons 'builtin (remq 'builtin (cdr x)))))
 marginalia-annotator-registry)

(provide 'setup-vertico)
