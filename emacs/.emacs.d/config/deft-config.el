(use-package deft
  :ensure t
  :config
  (setq deft-recursive t)
  (setq deft-use-filename-as-title t)
  (setq deft-use-filter-string-for-filename t)
  (setq deft-extensions '("txt" "org" "md"))
  (setq deft-directory "~/Documents/org")
  :bind (:map main-leader-map
              ("an" . deft)))

(provide 'deft-config)
