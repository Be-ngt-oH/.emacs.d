;; Add some directories to grep-find-ignored-directories
(require 'grep)
(eval-after-load "grep"
  '(progn
     (add-to-list 'grep-find-ignored-directories "bower_components")
     (add-to-list 'grep-find-ignored-directories ".cask")))

;; Enable disabled commands
(put 'dired-find-alternate-file 'disabled nil)

(provide 'setup-blacklists)
