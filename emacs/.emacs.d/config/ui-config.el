(require 'powerpack)
(ensure-are-installed!
 '(solarized-theme
   gruvbox-theme
   nyan-mode
   rainbow-delimiters
   bind-map))

(defun solarized-light ()
  (interactive)
  (load-theme 'solarized-light t))

(defun solarized-dark ()
  (interactive)
  (load-theme 'solarized-dark t))

(defun gruvbox ()
  (interactive)
  (load-theme 'gruvbox t))

(solarized-light)

(bind-map-set-keys main-leader-map
  "Tl" 'solarized-light
  "Td" 'solarized-dark
  "Tg" 'gruvbox)

(blink-cursor-mode 0) ; disable blinkage
(global-hl-line-mode t)
(nyan-mode)

(bind-map-set-keys main-leader-map
  "tn" 'linum-mode)

(provide 'ui-config)
