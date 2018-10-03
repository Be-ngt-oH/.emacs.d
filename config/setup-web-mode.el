;; Use line comments instead of block comments
(require 'web-mode)

(setq-default web-mode-comment-formats (remove '("javascript" . "/*") web-mode-comment-formats))
(add-to-list 'web-mode-comment-formats '("javascript" . "//"))

(setq-default web-mode-enable-auto-indentation nil)

(provide 'setup-web-mode)
