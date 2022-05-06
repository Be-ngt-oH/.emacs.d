(require 'markdown-mode)
;; Use pandoc markdown
(setq markdown-command "/usr/bin/pandoc --to html5 --toc --standalone --mathjax")

;; Add several minor-modes to markdown-mode
(mapc
 (lambda (minor-mode)
   (add-hook 'markdown-mode-hook minor-mode))
 '(flyspell-mode
   linum-mode
   auto-fill-mode
   (lambda () (electric-indent-local-mode -1))))

(provide 'setup-markdown-mode)
