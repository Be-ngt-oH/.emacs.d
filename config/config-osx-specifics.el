(use-package emacs
  :config
  (setq mac-option-modifier nil
        mac-command-modifier 'meta
        select-enable-clipboard t))

;; Fix for https://debbugs.gnu.org/cgi/bugreport.cgi?bug=34341
(use-package gnutls
  :config
  (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3"))

(use-package projectile
  :config
  (delete "WORKSPACE" projectile-project-root-files))

(provide 'config-osx-specifics)
