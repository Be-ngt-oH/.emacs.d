(require 'markdown-mode)

;; Use pandoc markdown
(setq markdown-command "/usr/bin/pandoc --to html5 --toc --standalone --mathjax")

;; Add several minor-modes to markdown-mode
(mapc
 (lambda (minor-mode)
   (add-hook 'markdown-mode-hook minor-mode))
 '(auto-complete-mode
   flyspell-mode
   ac-flyspell-workaround
   linum-mode
   auto-fill-mode))

(provide 'setup-markdown)
