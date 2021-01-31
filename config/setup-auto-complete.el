;; Load default settings for auto-complete-mode
;; Default is to load auto-complete on every mode that has a dictionary
(require 'auto-complete-config)
(ac-config-default)
(ac-linum-workaround)
(ac-flyspell-workaround)
(provide 'setup-auto-complete)
