(use-package emacs
  :custom-face
  (tooltip  ((t (:background "#191a1b" :foreground ,(face-foreground 'default))))))

(use-package diff-mode
  :custom-face
  (diff-file-header ((t (:background unspecified))))
  (diff-header ((t (:background unspecified))))
  (diff-refine-added ((t (:inherit 'diff-added :background unspecified))))
  (diff-refine-removed ((t (:inherit 'diff-removed :background unspecified))))
  :config
  (set-face-attribute 'diff-added nil :background 'unspecified :foreground (face-foreground 'diff-indicator-added))
  (set-face-attribute 'diff-removed nil :background 'unspecified :foreground (face-foreground 'diff-indicator-removed)))

(use-package emacs
  :custom-face
  (eglot-diagnostic-tag-unnecessary-face ((t (:inherit flymake-note)))))

(use-package emacs
  :custom-face
  (font-lock-builtin-face ((t (:inherit font-lock-keyword-face :foreground unspecified))))
  (font-lock-constant-face ((t (:inherit font-lock-type-face :foreground unspecified))))
  (font-lock-keyword-face ((t (:weight normal))))
  (font-lock-type-face ((t (:weight normal)))))

(use-package emacs
  :custom-face
  (typescript-ts-jsx-tag-face ((t (:inherit font-lock-keyword-face))))
  (typescript-ts-jsx-attribute-face ((t (:inherit font-lock-variable-name-face)))))

(use-package flycheck-posframe
  :custom-face
  (flycheck-posframe-face ((t (:background "#191a1b")))))

(provide 'config-faces)
