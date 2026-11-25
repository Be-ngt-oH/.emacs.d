;;; -*- lexical-binding: t -*-

;; Disable GC during startup
(defvar gc-cons-threshold-default gc-cons-threshold)
(setq gc-cons-threshold most-positive-fixnum)
(add-hook 'emacs-startup-hook (lambda () (setq gc-cons-threshold gc-cons-threshold-default)))

;; libgccjit derives the macOS version from the Darwin version using the
;; pre-macOS 26 scheme (Darwin 27 -> "18.0"), which clang rejects, so
;; every native compilation fails.  Tell it the real version instead.
(when (and (eq system-type 'darwin)
           (native-comp-available-p)
           (not (getenv "MACOSX_DEPLOYMENT_TARGET")))
  (setenv "MACOSX_DEPLOYMENT_TARGET"
          (string-trim (shell-command-to-string "sw_vers -productVersion"))))

;; Quick way of disabling menu and tool-bar
;; https://github.com/doomemacs/doomemacs/blob/master/lisp/doom-start.el
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
