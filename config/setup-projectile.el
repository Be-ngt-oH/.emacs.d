(require 'projectile)
(projectile-mode)

(setq projectile-completion-system 'ivy)

;; The MacOS filesystem is case insensitive so my workspace/ directory matches
;; the marker file for Bazel
(require 'projectile)
(if (string-equal system-type "darwin") (delete "WORKSPACE" projectile-project-root-files))

(provide 'setup-projectile)
