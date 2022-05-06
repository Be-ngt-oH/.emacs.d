(require 'git-commit)

(setq git-commit-setup-hook
      '(git-commit-setup-changelog-support
        git-commit-propertize-diff
        bug-reference-mode
        with-editor-usage-message))
(setq git-commit-summary-max-length 72)
(add-hook 'git-commit-mode-hook (lambda () (setq fill-column 72)))

(provide 'setup-git-commit-mode)
