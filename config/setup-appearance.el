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

;; Display column number in mode line
(column-number-mode t)

;; Appearance for all prog-modes
;; Display line numbers
(add-hook 'prog-mode-hook 'linum-mode)

;; Make sure pos-tip is loaded. It's automatically used by extensions like ac if
;; available.
(require 'pos-tip)

(provide 'setup-appearance)
