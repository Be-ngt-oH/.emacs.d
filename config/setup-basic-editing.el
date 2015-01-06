(setq-default fill-column 80)

;; Sentence ends with period and one space
(setq sentence-end-double-space nil)

;; Always use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Swap the key-bindings of RET and C-j in prog-mode if they have the default
;; bindings (newline and newline-and-indent).
(defun swap-bindings (key1 key2)
  "Swaps the local bindings of key1 and key2."
  (let ((kb1 (key-binding key1))
	(kb2 (key-binding key2)))
    (local-set-key key1 kb2)
    (local-set-key key2 kb1)))

(add-hook 'prog-mode-hook
	  (lambda ()
	    (let ((kbd_RET (kbd "RET")) (kbd_Cj (kbd "C-j")))
	      (if (equal '(newline newline-and-indent)
			 (list (key-binding kbd_RET) (key-binding kbd_Cj)))
		  (swap-bindings kbd_RET kbd_Cj)))))

(provide 'setup-basic-editing)
