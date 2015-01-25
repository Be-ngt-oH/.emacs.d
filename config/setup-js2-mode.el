(require 'js2-mode)

;; Tern auto-completion
;; Tern must be installed (npm install -g tern)
(require 'tern)
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))

(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))

(define-key js2-mode-map (kbd "C-M-h") 'js2-mark-defun)

;; Disable js2 error highlighting - Flycheck seems to be much better
(setq js2-mode-show-parse-errors nil
      js2-mode-show-strict-warnings nil)

(provide 'setup-js2-mode)
