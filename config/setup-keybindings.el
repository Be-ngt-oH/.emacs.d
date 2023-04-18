(require 'extra-commands)

(windmove-default-keybindings)		; shift+arrow keys

(require 'buffer-move)
(global-set-key (kbd "<M-S-up>") 'buf-move-up)
(global-set-key (kbd "<M-S-down>") 'buf-move-down)
(global-set-key (kbd "<M-S-left>") 'buf-move-left)
(global-set-key (kbd "<M-S-right>") 'buf-move-right)

(require 'expand-region)
(global-set-key (kbd "M-h") 'er/expand-region) ; replace mark-paragraph

(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-M->") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-M-<") 'mc/edit-beginnings-of-lines)

(global-set-key (kbd "C-c C-r") 'mc/mark-all-dwim)

(require 'compile)
(define-key compilation-mode-map (kbd "C-c r") 'compilation-toggle-comint-mode)
(define-key comint-mode-map (kbd "C-c r") 'compilation-toggle-comint-mode)

(require 'projectile)
(define-key projectile-mode-map (kbd "C-x f") 'projectile-find-file)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(require 'python)
(define-key python-base-mode-map (kbd "C-c C-t") 'run-pytest-on-current-file)

(require 'ruby-mode)
(define-key ruby-base-mode-map (kbd "C-c C-t") 'run-rspec-on-current-file)
(define-key ruby-base-mode-map (kbd "C-c t") 'run-rspec-on-current-line)

(require 'flymake)
(define-key flymake-mode-map (kbd "M-n") 'flymake-goto-next-error)
(define-key flymake-mode-map (kbd "M-p") 'flymake-goto-prev-error)

(require 'flycheck)
(define-key flycheck-mode-map (kbd "M-n") 'flycheck-next-error)
(define-key flycheck-mode-map (kbd "M-p") 'flycheck-previous-error)

(require 'js)
(require 'sgml-mode)
(define-key js-base-mode-map (kbd "C-c C-e") 'sgml-close-tag)

(provide 'setup-keybindings)
