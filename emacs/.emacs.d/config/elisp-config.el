(require 'powerpack)
(ensure-are-installed! '(elisp-slime-nav
                         smartparens
                         rainbow-delimiters
                         whitespace-cleanup-mode
                         bind-map))

(add-hook 'emacs-lisp-mode-hook 'smartparens-strict-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'emacs-lisp-mode-hook 'whitespace-cleanup-mode)

(bind-map elisp-leader-map
  :evil-keys (",")
  :evil-states (normal visual)
  :major-modes (emacs-lisp-mode
                lisp-interaction-mode))
(bind-map-set-keys elisp-leader-map
  "eb" 'eval-buffer
  "ee" 'eval-last-sexp
  "gg" 'elisp-slime-nav-find-elisp-thing-at-point
  "hh" 'elisp-slime-nav-describe-elisp-thing-at-point)

(provide 'elisp-config)
