(require 'eglot)
(setq eglot-confirm-server-initiated-edits nil)
(add-to-list 'eglot-ignored-server-capabilities ':documentHighlightProvider)

(provide 'setup-eglot)
