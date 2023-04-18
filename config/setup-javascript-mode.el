(require 'add-node-modules-path)
(add-hook 'js-base-mode-hook 'add-node-modules-path)
(add-hook 'js-base-mode-hook 'eglot-ensure)
(provide 'setup-javascript-mode)
