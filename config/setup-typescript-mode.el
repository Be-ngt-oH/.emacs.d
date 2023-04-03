(require 'typescript-mode)

(require 'eglot)
(add-hook 'typescript-mode-hook 'eglot-ensure)

(require 'add-node-modules-path)
(add-hook 'typescript-mode-hook 'add-node-modules-path)

(define-derived-mode typescript-tsx-mode typescript-mode "TypeScript[TSX]")
(require 'tree-sitter)
(add-to-list 'tree-sitter-major-mode-language-alist '(typescript-tsx-mode . tsx))

(provide 'setup-typescript-mode)
