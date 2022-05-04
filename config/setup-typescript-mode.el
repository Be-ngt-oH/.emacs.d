(require 'typescript-mode)
(require 'eglot)
(add-hook 'typescript-mode-hook 'eglot-ensure)

(provide 'setup-typescript-mode)
