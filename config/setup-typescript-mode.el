(require 'typescript-mode)

(require 'eglot)
(add-hook 'typescript-mode-hook 'eglot-ensure)

(require 'add-node-modules-path)
(add-hook 'typescript-mode-hook 'add-node-modules-path)

(provide 'setup-typescript-mode)
