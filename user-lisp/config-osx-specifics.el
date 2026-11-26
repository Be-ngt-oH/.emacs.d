;;; config-osx-specifics.el --- macOS-specific settings  -*- lexical-binding: t -*-

;;; Commentary:

;; Modifier keys and clipboard settings for macOS.

;;; Code:

(use-package emacs
  :config
  (setq mac-option-modifier nil
        mac-command-modifier 'meta
        select-enable-clipboard t))

(provide 'config-osx-specifics)
;;; config-osx-specifics.el ends here
