(require 'grep)
(add-to-list 'grep-find-ignored-directories "bower_components")
(add-to-list 'grep-find-ignored-directories "vendor")
(add-to-list 'grep-find-ignored-directories "node_modules")
(add-to-list 'grep-find-ignored-directories "elpa")

(require 'ripgrep)
(add-to-list 'ripgrep-arguments "--smart-case")

(provide 'setup-grep)
