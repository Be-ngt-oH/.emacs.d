(require 'exec-path-from-shell)
(require 'flycheck)

(setq mac-option-modifier nil
      mac-command-modifier 'meta
      select-enable-clipboard t)

;; Fix path for globally installed utilities
(setq exec-path-from-shell-check-startup-files nil)
(exec-path-from-shell-initialize)

(provide 'setup-osx-specifics)
