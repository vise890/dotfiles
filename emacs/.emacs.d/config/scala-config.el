(use-package ensime
  :ensure t
  :commands ensime ensime-mode)

(add-hook 'scala-mode-hook 'ensime-mode)

(provide 'scala-config)
