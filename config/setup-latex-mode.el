;; Add several minor-modes to latex-mode
(mapc
 (lambda (minor-mode)
   (add-hook 'latex-mode-hook minor-mode))
 '(auto-complete-mode
   flyspell-mode
   ac-flyspell-workaround
   linum-mode
   fci-mode
   auto-fill-mode))

(provide 'setup-latex-mode)