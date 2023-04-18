;; Prevent Emacs from showing the splash screen
(setq inhibit-splash-screen t)

;; Hide mouse interface
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Set basic colors
(load-theme 'wombat)

(set-face-attribute 'tooltip nil :background "#191a1b" :foreground (face-foreground 'default))

(require 'diff-mode)
(set-face-background 'diff-header nil)
(set-face-background 'diff-file-header nil)
(set-face-attribute 'diff-added nil :background nil :foreground (face-foreground 'diff-indicator-added))
(set-face-attribute 'diff-removed nil :background nil :foreground (face-foreground 'diff-indicator-removed))
(set-face-attribute 'diff-refine-added nil :inherit 'diff-added :background nil)
(set-face-attribute 'diff-refine-removed nil :inherit 'diff-removed :background nil)

(require 'eglot)
(set-face-attribute 'eglot-diagnostic-tag-unnecessary-face nil :inherit 'flymake-note)

(set-face-attribute 'font-lock-constant-face nil :foreground nil :inherit 'font-lock-type-face)
(set-face-attribute 'font-lock-keyword-face nil :weight 'normal)
(set-face-attribute 'font-lock-builtin-face nil :inherit 'font-lock-keyword-face :foreground nil)
(set-face-attribute 'font-lock-function-name-face nil :foreground nil)
(set-face-attribute 'font-lock-type-face nil :weight 'normal)

(require 'flycheck-posframe)
(set-face-background 'flycheck-posframe-face "#191a1b")

;; Display column number in mode line
(column-number-mode t)

;; Appearance for all prog-modes
;; Display line numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(require 'paren)
(setq show-paren-delay 0)
(show-paren-mode -1)

;; Disable alarm bell
(setq ring-bell-function 'ignore)

(add-hook 'compilation-filter-hook 'ansi-color-compilation-filter)

(provide 'setup-appearance)
