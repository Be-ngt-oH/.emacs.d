(require 'setup-projectile)
(defun run-pytest-on-current-file ()
  "Executes pytest with the current file name."
  (interactive)
  (run-shell-command-with-file-name "pytest"))

(add-hook 'python-mode-hook (lambda () (define-key python-mode-map (kbd "C-c C-t") 'run-pytest-on-current-file)))

(provide 'setup-python-mode)
