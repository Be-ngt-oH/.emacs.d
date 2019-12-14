;; General emacs settings

(add-to-list 'load-path "~/.emacs.d/config")

;; Setup Cask
(if (string-equal system-type "darwin")
    (require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
  (require 'cask "~/.cask/cask.el"))

(cask-initialize)

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

(defun open-on-github ()
    "Opens the current file on GitHub"
    (interactive)
    (let*
        ((base_url "https://github.com/")
         (git_remote (shell-command-to-string "git config --get remote.origin.url"))
         (repo (and
                (string-match "git@github.com:\\(.*\\)\.git" git_remote)
                (match-string 1 git_remote))
               )
         (file (substring (shell-command-to-string (concat "git ls-files --full-name " buffer-file-name)) 0 -1))
         (full_url (concat base_url repo "/blob/master/" file "#L" (number-to-string (line-number-at-pos)))))
      (browse-url full_url)))

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
