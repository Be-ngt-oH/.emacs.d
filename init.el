;; General emacs settings
(add-to-list 'load-path "~/.emacs.d/config")

;; Setup Cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

(require 'setup-appearance)
(require 'setup-ido)
