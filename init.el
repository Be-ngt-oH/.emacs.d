;; General emacs settings

(add-to-list 'load-path "~/.emacs.d/config")

(require 'package)
(add-to-list 'package-archives
             '("MELPA Stable" . "http://stable.melpa.org/packages/") t)

(setq package-selected-packages
  '(
    pos-tip
    flycheck
    flycheck-pos-tip
    auto-complete
    jedi
    projectile
    ivy
    js2-mode
    yasnippet
    expand-region
    markdown-mode
    multiple-cursors
    buffer-move
    web-mode
    editorconfig
    exec-path-from-shell
    inf-ruby
    ))
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
(require 'setup-jedi)
(require 'setup-latex-mode)
(require 'setup-projectile)
(require 'setup-js2-mode)
(require 'setup-file-mappings)
(require 'setup-yasnippet)
(require 'setup-markdown)
(require 'setup-multiple-cursors)
(require 'setup-web-mode)
(require 'setup-ruby-mode)
(require 'setup-sql-mode)
(require 'setup-github-links)

