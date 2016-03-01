; nicer colour for visual bell
; nyan-cat
; install packages in my-ppackages
; dash
; version control the dotfile
;
; powerline + faces
; nerdcommenter
; lisp mode / lispy for structural editing
; , gg
; projectile find in pj

(add-to-list 'load-path "~/.emacs.d/packages")

(require 'powerpack)
(setq my-packages
      '(dash

        better-defaults

        which-key

        solarized-theme

        smex
	ido-ubiquitous
        ido-vertical-mode

	company

        smartparens

        rainbow-delimiters

        evil
        evil-escape
        evil-leader))
(ensure-are-installed! my-packages)

(load-theme 'solarized-light t)

(which-key-mode)

;; M-x fuzzy and cool
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(ido-everywhere t)
(ido-ubiquitous-mode t)
(ido-vertical-mode t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Evil mode
(add-hook 'evil-mode-hook 'evil-escape-mode)
(setq-default evil-escape-key-sequence "jk")
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key "b" 'switch-to-buffer)
(evil-leader/set-key "<SPC>" 'smex)
(evil-leader/set-key "eb" 'eval-buffer)
(evil-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-company-mode)

;; elisp
(add-hook 'emacs-lisp-mode-hook #'smartparens-strict-mode)
(add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)


;; org/deft
(evil-leader/set-key "ad" 'deft)
(setq deft-extensions '("txt" "org" "md"))
(setq deft-directory "~/Documents/org")

;; init-el editing
(defun init-el-edit ()
  (interactive)
  (set-buffer (find-file "~/.emacs.d/init.el")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
