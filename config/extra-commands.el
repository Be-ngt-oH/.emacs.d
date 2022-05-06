(defun open-on-github ()
  "Opens the current file/line on GitHub."
  (interactive)
  (browse-url (github-url)))

(defun copy-github-url-as-kill ()
  "Copy the URL to the current file/line on GitHub."
  (interactive)
  (kill-new (github-url))
  (message "%s" (github-url)))

(defun github-url ()
  "The URL to the current file/line on GitHub"
  (let*
      ((base_url "https://github.com/")
       (git_remote (shell-command-to-string "git config --get remote.origin.url"))
       (repo (and
              (string-match "git@github.com:\\(.*\\)\.git" git_remote)
              (match-string 1 git_remote))
             )
       (file (substring (shell-command-to-string (concat "git ls-files --full-name " buffer-file-name)) 0 -1)))
    (concat base_url repo "/blob/master/" file "#L" (number-to-string (line-number-at-pos)))))

(require 'projectile)

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

(defun projectile-copy-filepath-as-kill ()
  "Copy the path of the current buffer file name in relation to the project root."
  (interactive)
  (let ((string (file-relative-name (buffer-file-name) (projectile-project-root))))
    (kill-new string)
    (message "%s" string)))

(require 'compile)

(defun compilation-toggle-comint-mode ()
  "Toggles between comint/read-only-mode and compilation mode."
  (interactive)
  (if (eq major-mode 'compilation-mode)
      (progn (call-interactively 'comint-mode) (call-interactively 'read-only-mode))
      (progn (call-interactively 'compilation-mode) (call-interactively 'read-only-mode))))

(defun run-rspec-on-current-file ()
  "Executes rspec with the current file name."
  (interactive)
  (run-shell-command-with-file-name "bundle exec rspec --no-color"))
(defun run-rspec-on-current-line ()
  "Executes rspec with the current file name and line."
  (interactive)
  (run-shell-command-with-file-name-and-line "bundle exec rspec --no-color"))
(defun run-rspec-outline-on-current-file ()
  "Executes rspec --dry-run --format documentation with the current file name."
  (interactive)
  (run-shell-command-with-file-name "bundle exec rspec --no-color --dry-run --format documentation"))

(defun run-pytest-on-current-file ()
  "Executes pytest with the current file name."
  (interactive)
  (run-shell-command-with-file-name "pytest"))

(provide 'extra-commands)
