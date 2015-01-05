(require 'yasnippet)
(yas-global-mode t)

;; Bind expand to <C-return> to avoid conflict with auto-complete
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "<C-return>") 'yas-expand)

(provide 'setup-yasnippet)
