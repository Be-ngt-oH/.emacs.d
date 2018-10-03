(require 'projectile)
(projectile-global-mode)

(define-key projectile-mode-map (kbd "C-x f") 'projectile-find-file)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(provide 'setup-projectile)
