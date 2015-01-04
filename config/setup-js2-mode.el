(require 'js2-mode)

;; Tern auto-completion
;; Tern must be installed (npm install -g tern)
(require 'tern)
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))

(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))

(provide 'setup-js2-mode)
