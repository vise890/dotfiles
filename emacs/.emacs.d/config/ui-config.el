(setq my-font "Ubuntu Mono-16")
(set-face-attribute 'default t :font "Ubuntu Mono-16")
(add-to-list 'default-frame-alist '(font . "Ubuntu Mono-16"))

(setq inhibit-startup-message t) ; go to scratch
(setq initial-scratch-message ";; Welcome. Welcome to city 17")
(blink-cursor-mode 0) ; disable blinkage
(global-hl-line-mode t)

(bind-map-set-keys main-leader-map
  "tn" 'linum-mode)

(use-package nyan-mode
  :ensure t
  :config (nyan-mode))

(use-package rainbow-delimiters :ensure t)


(use-package solarized-theme
  :ensure t
  :config
  (defun solarized-light ()
    (interactive)
    (load-theme 'solarized-light t))

  (defun solarized-dark ()
    (interactive)
    (load-theme 'solarized-dark t))

  :bind (:map main-leader-map
              ("Tl" . solarized-light)
              ("Td" . solarized-dark)))

(use-package gruvbox-theme
  :ensure t
  :config
  (defun gruvbox ()
    (interactive)
    (load-theme 'gruvbox t))
  :bind (:map main-leader-map
              ("Tg" . gruvbox)))

(solarized-dark)

(provide 'ui-config)
