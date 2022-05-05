(require 'ivy)
(ivy-mode 1)

(setq ivy-use-virtual-buffers t)
(setq ivy-use-selectable-prompt t)

(require 'orderless)
(setq ivy-re-builders-alist '((t . orderless-ivy-re-builder)))
(add-to-list 'ivy-highlight-functions-alist '(orderless-ivy-re-builder . orderless-ivy-highlight))

(provide 'setup-ivy)
