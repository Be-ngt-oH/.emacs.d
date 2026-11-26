;;; -*- lexical-binding: t -*-

;; Set the specs as override specs, so they layer on top of the theme.
;; use-package's :custom-face did this until Emacs 31, which changed it
;; to set the defface spec instead, which the theme takes precedence
;; over (bug#77928).
(defun config-faces-override (&rest specs)
  "Set each (FACE SPEC) in SPECS as FACE's override spec."
  (pcase-dolist (`(,face ,spec) specs)
    (face-spec-set face spec 'face-override-spec)))

(config-faces-override
 `(tooltip ((t (:background "#191a1b" :foreground ,(face-foreground 'default)))))
 '(eglot-diagnostic-tag-unnecessary-face ((t (:inherit flymake-note))))
 '(font-lock-builtin-face ((t (:inherit font-lock-keyword-face :foreground unspecified))))
 '(font-lock-constant-face ((t (:inherit font-lock-type-face :foreground unspecified))))
 '(font-lock-keyword-face ((t (:weight normal))))
 '(font-lock-type-face ((t (:weight normal))))
 '(typescript-ts-jsx-tag-face ((t (:inherit font-lock-keyword-face))))
 '(typescript-ts-jsx-attribute-face ((t (:inherit font-lock-variable-name-face))))
 '(diff-file-header ((t (:background unspecified))))
 '(diff-header ((t (:background unspecified))))
 '(diff-refine-added ((t (:inherit diff-added :background unspecified))))
 '(diff-refine-removed ((t (:inherit diff-removed :background unspecified)))))

(use-package diff-mode
  :defer t
  :config
  (set-face-attribute 'diff-added nil :background 'unspecified :foreground (face-foreground 'diff-indicator-added))
  (set-face-attribute 'diff-removed nil :background 'unspecified :foreground (face-foreground 'diff-indicator-removed)))

(provide 'config-faces)
