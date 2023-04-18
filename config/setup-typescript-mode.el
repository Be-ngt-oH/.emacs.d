(require 'typescript-ts-mode)

(add-hook 'typescript-ts-base-mode-hook 'eglot-ensure)
(add-hook 'typescript-ts-base-mode-hook 'add-node-modules-path)

(provide 'setup-typescript-mode)
