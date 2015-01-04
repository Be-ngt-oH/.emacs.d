(require 'ido)
(ido-mode t)

;; flex matching
(require 'flx-ido)
(flx-ido-mode t)
(setq ido-enable-flex-matching t)
;; disable flx's highlights
(setq flx-ido-use-faces nil)

(provide 'setup-ido)
