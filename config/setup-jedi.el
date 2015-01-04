;; Don't forget to run jedi:install-server, before first use and after every
;; update. See http://tkf.github.io/emacs-jedi/latest/#quick-start

(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(provide 'setup-jedi)
