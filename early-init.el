;; Disable GC during startup
(defvar gc-cons-threshold-default gc-cons-threshold)
(setq gc-cons-threshold most-positive-fixnum)
(add-hook 'emacs-startup-hook (lambda () (setq gc-cons-threshold gc-cons-threshold-default)))

;; Quick way of disabling menu and tool-bar
;; https://github.com/doomemacs/doomemacs/blob/master/lisp/doom-start.el
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
