(require 'exec-path-from-shell)
(require 'flycheck)

(setq mac-option-modifier nil
      mac-command-modifier 'meta
      select-enable-clipboard t)

;; Fix path for globally installed utilities
(setq exec-path-from-shell-check-startup-files nil)
(exec-path-from-shell-initialize)
;; Use globally intsalled rubocop, because the above doesn't play well with
;; chruby
(setq flycheck-ruby-rubocop-executable "/usr/local/bin/rubocop")

(provide 'setup-osx-specifics)
