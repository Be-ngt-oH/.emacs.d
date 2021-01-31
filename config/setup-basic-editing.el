(setq-default fill-column 80)

;; Sentence ends with period and one space
(setq sentence-end-double-space nil)

;; Always use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Overwrite region by typing
(delete-selection-mode 1)

;; Add expand-region command and bind it to M-h (replace mark-paragraph)
(require 'expand-region)
(global-set-key (kbd "M-h") 'er/expand-region)

;; Move by subwords, e.g. in CamelCased words
(global-subword-mode 1)

(provide 'setup-basic-editing)
