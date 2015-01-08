(require 'elisp-slime-nav)

(defun my-elisp-hook ()
  (elisp-slime-nav-mode)
  (turn-on-eldoc-mode)) ;; display fun signature in minibuffer

(add-hook 'emacs-lisp-mode-hook 'my-elisp-hook) ;; call my-elisp-hook when emacs-lisp-mode gets enabled

(provide 'elisp)

