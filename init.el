;; General emacs settings
(add-to-list 'load-path "~/.emacs.d/config")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(git-commit pos-tip flycheck flycheck-pos-tip auto-complete projectile ivy expand-region markdown-mode multiple-cursors buffer-move editorconfig exec-path-from-shell inf-ruby ripgrep)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives
             '("MELPA Stable" . "http://stable.melpa.org/packages/") t)

(unless (cl-every #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (package-install-selected-packages))

;; Fix path for globally installed utilities
(require 'exec-path-from-shell)
(setq exec-path-from-shell-check-startup-files nil)
(exec-path-from-shell-initialize)

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
(save-place-mode 1)
(setq save-place-file (expand-file-name ".places" user-emacs-directory))

;; Use settings from .editorconfig if available
(require 'editorconfig)
(editorconfig-mode 1)

;; Disable alarm bell
(setq ring-bell-function 'ignore)

;; Start Emacs server
(require 'server)
(unless (server-running-p)
  (server-start))

(if (string-equal system-type "darwin") (require 'setup-osx-specifics))
(require 'setup-appearance)
(require 'setup-basic-editing)
(require 'setup-blacklists)
(require 'setup-compilation)
(require 'setup-ivy)
(require 'setup-flycheck)
(require 'setup-auto-complete)
(require 'setup-latex-mode)
(require 'setup-projectile)
(require 'setup-file-mappings)
(require 'setup-markdown)
(require 'setup-multiple-cursors)
(require 'setup-ruby-mode)
(require 'setup-sql-mode)
(require 'setup-github-links)
(require 'setup-git-commit)
