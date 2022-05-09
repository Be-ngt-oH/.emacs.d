(require 'add-node-modules-path)
(add-hook 'js-mode-hook 'add-node-modules-path)

(add-hook 'js-mode-hook 'eglot-ensure)

(provide 'setup-javascript-mode)
