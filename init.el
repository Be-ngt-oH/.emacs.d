;; General emacs settings
(add-to-list 'load-path "~/.emacs.d/config")

;; Setup Cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'setup-appearance)
(require 'setup-ido)
