;; Load default settings for auto-complete-mode
;; Default is to load auto-complete on every mode that has a dictionary
(require 'auto-complete-config)
(ac-config-default)
;; Global-linum-mode switches between line numbers of ac and the buffer
;; This is a built-in fix
(ac-linum-workaround)

(provide 'setup-auto-complete)
