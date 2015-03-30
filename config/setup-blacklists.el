;; Add some directories to grep-find-ignored-directories
(require 'grep)
(eval-after-load "grep"
  '(progn
     (add-to-list 'grep-find-ignored-directories "bower_components")
     (add-to-list 'grep-find-ignored-directories ".cask")))

(provide 'setup-blacklists)
