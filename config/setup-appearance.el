;; Prevent Emacs from showing the splash screen
(setq inhibit-splash-screen t)

;; Hide mouse interface
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Set basic colors
(load-theme 'wombat)

(require 'diff-mode)
(set-face-background 'diff-header nil)
(set-face-background 'diff-file-header nil)
(set-face-background 'diff-added nil)
(set-face-foreground 'diff-added (face-foreground 'diff-indicator-added))
(set-face-background 'diff-removed nil)
(set-face-foreground 'diff-removed (face-foreground 'diff-indicator-removed))
(set-face-attribute 'diff-refine-added nil :inherit 'diff-added)
(set-face-background 'diff-refine-added nil)
(set-face-attribute 'diff-refine-removed nil :inherit 'diff-removed)
(set-face-background 'diff-refine-removed nil)

(require 'eglot)
(set-face-attribute 'eglot-highlight-symbol-face nil :inherit nil)
(set-face-attribute 'eglot-diagnostic-tag-unnecessary-face nil :inherit 'flymake-note)

(require 'popup)
(set-face-background 'popup-tip-face "#191a1b")
(set-face-foreground 'popup-tip-face "white")
(setq popup-tip-max-width nil)

;; Display column number in mode line
(column-number-mode t)

;; Appearance for all prog-modes
;; Display line numbers
(add-hook 'prog-mode-hook 'linum-mode)

(require 'paren)
(setq show-paren-delay 0)
(show-paren-mode -1)

;; Disable alarm bell
(setq ring-bell-function 'ignore)

(add-hook 'compilation-filter-hook 'ansi-color-compilation-filter)

(provide 'setup-appearance)
