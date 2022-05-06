(setq-default fill-column 80)

;; Sentence ends with period and one space
(setq sentence-end-double-space nil)

;; Always use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Overwrite region by typing
(delete-selection-mode 1)

;; Move by subwords, e.g. in CamelCased words
(global-subword-mode 1)

;; Save point position between sessions
(require 'saveplace)
(save-place-mode 1)
(setq save-place-file (expand-file-name "places" user-emacs-directory))

;; Use settings from .editorconfig if available
(require 'editorconfig)
(editorconfig-mode 1)

(provide 'setup-basic-editing)
