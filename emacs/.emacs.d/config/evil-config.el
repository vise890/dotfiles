(require 'powerpack)
(ensure-are-installed!
 '(evil
   evil-escape
   bind-map))
(add-hook 'evil-mode-hook 'evil-escape-mode)
(setq-default evil-escape-key-sequence "jk")
(evil-mode)

(provide 'evil-config)
