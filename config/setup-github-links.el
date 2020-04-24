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

(provide 'setup-github-links)
