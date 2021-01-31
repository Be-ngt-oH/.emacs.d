;; Add several minor-modes to latex-mode
(mapc
 (lambda (minor-mode)
   (add-hook 'latex-mode-hook minor-mode))
 '(auto-complete-mode
   flyspell-mode
   linum-mode
   auto-fill-mode))

(provide 'setup-latex-mode)
