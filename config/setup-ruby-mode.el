(require 'ruby-mode)

(setq ruby-insert-encoding-magic-comment nil
      ruby-align-to-stmt-keywords t)

(require 'setup-projectile)
(defun run-rspec-on-current-file ()
  "Executes bundle exec rspec with the current file name."
  (interactive)
  (run-shell-command-with-file-name "bundle exec rspec --no-color"))
(defun run-rspec-on-current-line ()
  "Executes bundle exec rspec with the current file name and line."
  (interactive)
  (run-shell-command-with-file-name-and-line "bundle exec rspec --no-color"))
(defun run-rspec-outline-on-current-file ()
  "Executes bundle exec rspec --dry-run --format documentation with the current file name."
  (interactive)
  (run-shell-command-with-file-name "bundle exec rspec --no-color --dry-run --format documentation"))

(define-key ruby-mode-map (kbd "C-c C-t") 'run-rspec-on-current-file)
(define-key ruby-mode-map (kbd "C-c t") 'run-rspec-on-current-line)

(provide 'setup-ruby-mode)
