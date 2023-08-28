(use-package emacs
  :custom
  (sentence-end-double-space nil)
  (ring-bell-function 'ignore)
  (inhibit-startup-screen t)
  (backup-directory-alist `(("." . ,(expand-file-name "backups" user-emacs-directory))))
  (fill-column 80)
  (indent-tabs-mode nil)
  (delete-selection-mode 1)
  (global-subword-mode 1))

(use-package server :commands server-running-p :config (unless (server-running-p) (server-start)))
(use-package package :config (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t))
(use-package cus-edit :custom custom-file (expand-file-name "custom.el" user-emacs-directory))
(use-package savehist :config (savehist-mode))
(use-package saveplace :custom (save-place-file (expand-file-name "places" user-emacs-directory)) (save-place-mode 1))
(use-package custom :config (load-theme 'wombat))

(use-package display-line-numbers :hook (prog-mode latex-mode markdown-mode yaml-ts-mode))
(use-package simple :config (column-number-mode t) :hook ((latex-mode markdown-mode) . auto-fill-mode))
(use-package ansi-color :hook (compilation-filter . ansi-color-compilation-filter))
(use-package paren :defer t :custom (show-paren-delay 0) (show-paren-mode nil))

(use-package dired :defer t :config (put 'dired-find-alternate-file 'disabled nil))
(use-package flyspell :hook (latex-mode markdown-mode))

(use-package eglot
  :custom
  (eglot-confirm-server-initiated-edits nil)
  (eglot-ignored-server-capabilities '(:documentHighlightProvider))
  :hook ((js-base-mode typescript-ts-base-mode) . eglot-ensure))

(use-package grep
  :defer t
  :custom
  grep-find-ignored-directories (append vc-directory-exclusion-list
                                        '("bower_components" "vendor" "node_modules" "elpa")))

(use-package ruby-mode
  :defer t
  :custom
  (ruby-insert-encoding-magic-comment nil)
  (ruby-align-to-stmt-keywords t))

(use-package sql :defer t :hook (sql-interactive-mode . (lambda () (setq truncate-lines t))))

(use-package flymake
  :hook prog-mode
  :bind (
         :map flymake-mode-map
         ("M-n" . flymake-goto-next-error)
         ("M-p" . flymake-goto-prev-error)))

(use-package windmove
  :bind (("S-<up>" . windmove-up)
         ("S-<down>" . windmove-down)
         ("S-<left>" . windmove-left)
         ("S-<right>" . windmove-right)))

(use-package expand-region :ensure t :bind ("M-h" . er/expand-region))
(use-package apheleia :ensure t :hook prog-mode)
(use-package editorconfig :ensure t :config (editorconfig-mode t))
(use-package exec-path-from-shell :ensure t :config (exec-path-from-shell-initialize))
(use-package add-node-modules-path :ensure t :hook ((js-base-mode typescript-ts-base-mode) . add-node-modules-path))
(use-package rg :ensure t :defer t :hook (rg-mode . (lambda () (setq truncate-lines t))))
(use-package pyvenv :ensure t :defer t)
(use-package inf-ruby :ensure t :defer t)

(use-package projectile
  :ensure t
  :bind (
         :map projectile-mode-map
         ("C-x f" . projectile-find-file))
  :bind-keymap ("C-c p" . projectile-command-map)
  :custom
  (projectile-mode t)
  (projectile-completion-system 'ivy))

(use-package multiple-cursors
  :ensure t
  :bind (("C->" . mc/mark-next-like-this)
         ("C-<" . mc/mark-previous-like-this)
         ("C-M->" . mc/edit-ends-of-lines)
         ("C-M-<" . mc/edit-beginnings-of-lines)
         ("C-c C-r" . mc/mark-all-dwim)))

(use-package buffer-move
  :ensure t
  :bind (("M-S-<up>" . buf-move-up)
         ("M-S-<down>" . buf-move-down)
         ("M-S-<left>" . buf-move-left)
         ("M-S-<right>" . buf-move-right)))

(use-package ivy
  :ensure t
  :custom
  (ivy-use-virtual-buffers t)
  (ivy-use-selectable-prompt t)
  :config
  (ivy-mode 1))
(use-package ivy-prescient :ensure t :config (ivy-prescient-mode 1))

(use-package corfu
  :ensure t
  :demand t
  :custom
  (corfu-auto t)
  (corfu-preview-current nil)
  :bind
  (:map corfu-map ("C-SPC" . corfu-insert-separator))
  :config
  (global-corfu-mode)
  ;; https://github.com/minad/corfu#completing-in-the-minibuffer
  (defun corfu-enable-in-minibuffer ()
    "Enable Corfu in the minibuffer if `completion-at-point' is bound."
    (when (where-is-internal #'completion-at-point (list (current-local-map)))
      ;; (setq-local corfu-auto nil) ;; Enable/disable auto completion
      (setq-local corfu-echo-delay nil ;; Disable automatic echo and popup
                  corfu-popupinfo-delay nil)
      (corfu-mode 1)))
  (add-hook 'minibuffer-setup-hook 'corfu-enable-in-minibuffer))

(use-package orderless
  :ensure t
  :custom
  ;; https://github.com/minad/corfu#installation-and-configuration
  (completion-styles '(orderless basic))
  (completation-category-defaults nil)
  (completion-category-overrides '((file (styles . (partial-completion))))))

;; (use-package flycheck
;;   :ensure t
;;   :custom
;;   (flycheck-global-modes '(not typescript-ts-mode tsx-ts-mode js-mode javascript-mode js-ts-mode js-jsx-mode))
;;   (flycheck-highlighting-mode 'symbols)
;;   (flycheck-disabled-checkers '(emacs-lisp-checkdoc))
;;   (global-flycheck-mode t)
;;   :bind (
;;          :map flycheck-mode-map
;;          ("M-n" . flycheck-next-error)
;;          ("M-p" . flycheck-previous-error)))
;; (use-package flycheck-posframe :ensure t :hook flycheck-mode)

(use-package git-commit
  :ensure t
  :custom
  (git-commit-setup-hook '(git-commit-setup-changelog-support
                           git-commit-propertize-diff
                           bug-reference-mode
                           with-editor-usage-message))
  (git-commit-summary-max-length 72)
  :config
  (add-hook 'git-commit-mode-hook (lambda () (setq fill-column 72))))

(use-package markdown-mode
  :ensure t
  :defer t
  :custom
  (markdown-indent-on-enter nil)
  (markdown-command "pandoc --to html5 --toc --standalone --mathjax"))

(use-package config-osx-specifics :load-path "config/" :if (eq system-type 'darwin))
(use-package config-faces :load-path "config/")
(use-package config-extra-commands :load-path "config/"
  :commands (open-on-github
             copy-github-url-as-kill
             run-shell-command-with-file-name
             run-shell-command-with-file-name-and-line
             projectile-copy-filepath-as-kill
             run-rspec-outline-on-current-file)
  :bind (
         :map ruby-base-mode-map
         ("C-c C-t" . run-rspec-on-current-file)
         ("C-c t" . run-rspect-on-current-line)
         :map compilation-mode-map
         ("C-c r" . compilation-toggle-comint-mode)
         :map comint-mode-map
         ("C-c r" . compilation-toggle-comint-mode))
  :config
  (use-package python
    :bind (
           :map python-base-mode-map
           ("C-c C-t" . run-pytest-on-current-file)))
  )

(use-package emacs
  :config
  (add-to-list 'auto-mode-alist '("\\.vue\\'" . mhtml-mode))
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . mhtml-mode))
  (add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-ts-mode))
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-ts-mode))
  (add-to-list 'auto-mode-alist '("\\Dockerfile\\'" . dockerfile-ts-mode))
  (add-to-list 'auto-mode-alist '("\\.ya?ml\\'" . yaml-ts-mode))

  (add-to-list 'major-mode-remap-alist '(sh-mode . bash-ts-mode))
  (add-to-list 'major-mode-remap-alist '(c++-mode . c++-ts-mode))
  (add-to-list 'major-mode-remap-alist '(c-or-c++-mode . c-or-c++-ts-mode))
  (add-to-list 'major-mode-remap-alist '(c-mode . c-ts-mode))
  (add-to-list 'major-mode-remap-alist '(csharp-mode . csharp-ts-mode))
  (add-to-list 'major-mode-remap-alist '(css-mode . css-ts-mode))
  (add-to-list 'major-mode-remap-alist '(html-mode . html-ts-mode))
  (add-to-list 'major-mode-remap-alist '(java-mode . java-ts-mode))
  (add-to-list 'major-mode-remap-alist '(js-mode . js-ts-mode))
  (add-to-list 'major-mode-remap-alist '(js-json-mode . json-ts-mode))
  (add-to-list 'major-mode-remap-alist '(python-mode . python-ts-mode))
  (add-to-list 'major-mode-remap-alist '(ruby-mode . ruby-ts-mode)))
