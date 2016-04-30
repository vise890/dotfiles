(req-package evil-escape
  :ensure t
  :require evil
  :config
  (progn
    (setq-default evil-escape-key-sequence "jk")
    (add-hook #'evil-mode-hook 'evil-escape-mode)
    (evil-mode)))

(provide 'evil-config)
