;; General emacs settings
(add-to-list 'load-path "~/.emacs.d/config")

;; Setup Cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Activate windmove keybindings
(windmove-default-keybindings)		; shift+arrow keys

(require 'setup-appearance)
(require 'setup-basic-editing)
(require 'setup-ido)
(require 'setup-flycheck)
(require 'setup-auto-complete)
(require 'setup-jedi)
(require 'setup-latex-mode)
(require 'setup-projectile)
