(require 'projectile)
(projectile-global-mode)

(define-key projectile-mode-map (kbd "C-x f") 'projectile-find-file-dwim)

(provide 'setup-projectile)
