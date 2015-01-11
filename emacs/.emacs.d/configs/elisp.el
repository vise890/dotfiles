;;; elisp.el --- Elisp config

;;; Commentary:
;; well

;;; Code:

(defun my-elisp-hook ()
  "Enable all the elisp goodies."
  (elisp-slime-nav-mode)
  (smartparens-strict-mode)
  (rainbow-delimiters-mode)
  (turn-on-eldoc-mode)) ; display fn signature in minibuffer

;; call my-elisp-hook when emacs-lisp-mode gets enabled
(add-hook 'emacs-lisp-mode-hook 'my-elisp-hook)

(provide 'elisp)
;;; elisp.el ends here
