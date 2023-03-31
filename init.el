(add-to-list 'load-path "~/.emacs.d/config")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(flycheck-posframe add-node-modules-path ivy-prescient orderless corfu eglot typescript-mode pyvenv git-commit flycheck projectile ivy expand-region markdown-mode multiple-cursors buffer-move editorconfig exec-path-from-shell inf-ruby ripgrep)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(unless (cl-every #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (package-install-selected-packages))

;; Fix path for globally installed utilities
(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Save minibuffer history
(savehist-mode)

;; Start Emacs server
(require 'server)
(unless (server-running-p)
  (server-start))

;; Enable disabled commands
(put 'dired-find-alternate-file 'disabled nil)

(add-to-list 'auto-mode-alist '("\\.vue\\'" . mhtml-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . mhtml-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . js-jsx-mode))

(if (string-equal system-type "darwin") (require 'setup-osx-specifics))
(require 'setup-appearance)
(require 'setup-basic-editing)
(require 'setup-keybindings)

(require 'setup-corfu)
(require 'setup-eglot)
(require 'setup-flycheck)
(require 'setup-grep)
(require 'setup-ivy)
(require 'setup-projectile)

(require 'setup-git-commit-mode)
(require 'setup-javascript-mode)
(require 'setup-latex-mode)
(require 'setup-markdown-mode)
(require 'setup-ruby-mode)
(require 'setup-sql-mode)
(require 'setup-typescript-mode)
