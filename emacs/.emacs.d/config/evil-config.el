(use-package evil-escape
  :ensure t
  :demand
  :init (setq-default evil-escape-key-sequence "jk")
  :config
  (add-hook #'evil-mode-hook 'evil-escape-mode))

(use-package evil
  :ensure t
  :config (evil-mode))

(provide 'evil-config)
