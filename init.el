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

;; Load buffer-move and bind commands to bindings similar to windmove
(require 'buffer-move)
(global-set-key (kbd "<M-S-up>") 'buf-move-up)
(global-set-key (kbd "<M-S-down>") 'buf-move-down)
(global-set-key (kbd "<M-S-left>") 'buf-move-left)
(global-set-key (kbd "<M-S-right>") 'buf-move-right)

;; Save point position between sessions
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (expand-file-name ".places" user-emacs-directory))

;; Start Emacs server
(require 'server)
(server-start)

(require 'setup-appearance)
(require 'setup-basic-editing)
(require 'setup-blacklists)
(require 'setup-ido)
(require 'setup-flycheck)
(require 'setup-auto-complete)
(require 'setup-jedi)
(require 'setup-latex-mode)
(require 'setup-projectile)
(require 'setup-js2-mode)
(require 'setup-file-mappings)
(require 'setup-yasnippet)
(require 'setup-markdown)
(require 'setup-multiple-cursors)
