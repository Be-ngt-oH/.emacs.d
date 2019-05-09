(require 'projectile)
(projectile-mode)

(setq projectile-completion-system 'ivy)

(define-key projectile-mode-map (kbd "C-x f") 'projectile-find-file)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(defun run-shell-command-with-file-name (command)
  "Invoke a shell command with the current file."
  (interactive "sCommand: ")
  (projectile-with-default-dir
      (projectile-project-root) (compile
                                 (concat command " " (buffer-file-name)))))
(defun run-shell-command-with-file-name-and-line (command)
  "Invoke a shell command with the current file name and line separated by a colon."
  (interactive "sCommand: ")
  (projectile-with-default-dir
      (projectile-project-root) (compile
                                 (concat command " " (buffer-file-name) ":" (number-to-string (line-number-at-pos))))))
(provide 'setup-projectile)
