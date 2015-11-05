(setq mac-option-modifier nil
      mac-command-modifier 'meta
      x-select-enable-clipboard t)

;; Fix path for globally installed utilities
(setq exec-path (append exec-path '("/usr/local/bin")))

(provide 'setup-osx-specifics)
