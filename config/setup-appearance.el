;; Prevent Emacs from showing the splash screen
(setq inhibit-splash-screen t)

;; Hide mouse interface
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Set basic colors
(load-theme 'wombat)

;; Display column number in mode line
(column-number-mode t)

;; Appearance for all prog-modes
;; Display line numbers
(add-hook 'prog-mode-hook 'linum-mode)

;; Make sure pos-tip is loaded. It's automatically used by extensions like ac if
;; available.
(require 'pos-tip)

(provide 'setup-appearance)
