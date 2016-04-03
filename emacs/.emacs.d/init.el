; lisp mode / lispy for structural editing
; decrease company delay
; make main-leader-map work in dired mode
; magit
; powerline + faces
; recent files/projects

(fset 'yes-or-no-p 'y-or-n-p) ; yes/no -> y/n
(setq inhibit-startup-message t) ; go to scratch

(add-to-list 'load-path "~/.emacs.d/packages")

(require 'powerpack)
(setq my-packages
      '(dash

        which-key

        better-defaults

        solarized-theme
        gruvbox-theme
        nyan-mode
        rainbow-delimiters

        evil
        evil-escape
        bind-map

        smex
        ido-ubiquitous
        ido-vertical-mode

        projectile

        company
        smartparens
        evil-nerd-commenter

        whitespace-cleanup-mode

        deft

        elisp-slime-nav
        ))

(ensure-are-installed! my-packages)

(which-key-mode)

;; bind-map (multiple evil leaders)
(bind-map main-leader-map
  :evil-keys ("<SPC>")
  :evil-states (normal visual))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Appearance
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Evil mode
(add-hook 'evil-mode-hook 'evil-escape-mode)
(setq-default evil-escape-key-sequence "jk")
(evil-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; M-x fuzzy and cool
(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(bind-map-set-keys main-leader-map
  "<SPC>" 'smex)
(bind-map-set-keys main-leader-map
  "," 'smex-major-mode-commands)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward) ; use part of file's direcotry for distinguishing buffers
(setq ido-enable-flex-matching t) ; bb matches beep boop
(setq ido-use-filename-at-point nil)
(setq ido-use-virtual-buffers t) ; include recent files in buffer list

(ido-everywhere t)
(ido-ubiquitous-mode t)
(ido-vertical-mode t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; code editing autocompletion/parens
(global-company-mode)
(require 'smartparens-config)
(bind-map-set-keys main-leader-map
  ";" 'evilnc-comment-or-uncomment-lines)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; window movement/management
(bind-map-set-keys main-leader-map
  "wh" 'windmove-left
  "wl" 'windmove-right
  "wj" 'windmove-down
  "wk" 'windmove-up
  "wq" 'delete-window)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; buffer management
(defun kill-all-other-buffers ()
  (interactive)
  (let ((other-buffers (delq (current-buffer) (buffer-list))))
    (mapc 'kill-buffer other-buffers)))
(bind-map-set-keys main-leader-map
  "bb" 'switch-to-buffer
  "bK" 'kill-all-other-buffers
  "bp" 'previous-buffer
  "bn" 'next-buffer)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; navigation
(bind-map-set-keys main-leader-map
                   "pf" 'projectile-find-file)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; elisp
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
  "ee" 'eval-last-sexp)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; clojure
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; init-el editing
(defun init-el-edit ()
  (interactive)
  (set-buffer (find-file "~/.emacs.d/init.el")))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; org/deft
(bind-map-set-keys main-leader-map
  "an" 'deft)
(setq deft-recursive t)
(setq deft-use-filename-as-title t)
(setq deft-use-filter-string-for-filename t)
(setq deft-extensions '("txt" "org" "md"))
(setq deft-directory "~/Documents/org")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
