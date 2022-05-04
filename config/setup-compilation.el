(require 'compile)

(defun compilation-toggle-comint-mode ()
  "Toggles between comint/read-only-mode and compilation mode."
  (interactive)
  (if (eq major-mode 'compilation-mode)
      (progn (call-interactively 'comint-mode) (call-interactively 'read-only-mode))
      (progn (call-interactively 'compilation-mode) (call-interactively 'read-only-mode))))

(define-key compilation-mode-map (kbd "C-c r") 'compilation-toggle-comint-mode)
(define-key comint-mode-map (kbd "C-c r") 'compilation-toggle-comint-mode)

(add-hook 'compilation-filter-hook 'ansi-color-compilation-filter)

(provide 'setup-compilation)
