(require 'ruby-mode)

;; Prevent auto-insertion of encoding comment on save
(setq-default ruby-insert-encoding-magic-comment nil)

(require 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)

(require 'setup-projectile)
(defun run-rspec-on-current-file ()
  "Executes bundle exec rspec with the current file name."
  (interactive)
  (run-shell-command-with-file-name "bundle exec rspec --no-color"))
(defun run-rspec-on-current-line ()
  "Executes bundle exec rspec with the current file name and line."
  (interactive)
  (run-shell-command-with-file-name-and-line "bundle exec rspec --no-color"))
(define-key ruby-mode-map (kbd "C-c C-t") 'run-rspec-on-current-file)
(define-key ruby-mode-map (kbd "C-c t") 'run-rspec-on-current-line)

(provide 'setup-ruby-mode)
