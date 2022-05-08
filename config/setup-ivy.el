(require 'ivy)
(ivy-mode 1)

(setq ivy-use-virtual-buffers t)
(setq ivy-use-selectable-prompt t)

(require 'ivy-prescient)
(ivy-prescient-mode)

(provide 'setup-ivy)
