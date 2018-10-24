;; Use line comments instead of block comments
(require 'web-mode)

(setq-default web-mode-comment-formats (remove '("javascript" . "/*") web-mode-comment-formats))
(add-to-list 'web-mode-comment-formats '("javascript" . "//"))

(setq-default web-mode-enable-auto-indentation nil)
(setq-default web-mode-markup-indent-offset 2)
(setq-default web-mode-code-indent-offset 2)
(setq-default web-mode-css-indent-offset 2)

(provide 'setup-web-mode)
