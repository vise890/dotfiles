(require 'powerpack)
(ensure-are-installed!
 '(smex
   ido-ubiquitous
   bind-map
   company
   smartparens
   projectile))

;; fix annoyances
(fset 'yes-or-no-p 'y-or-n-p) ; yes/no -> y/n
(setq inhibit-startup-message t) ; go to scratch
(setq ring-bell-function 'ignore)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; M-x fuzzy and cool
(smex-initialize)
(bind-map-set-keys main-leader-map "<SPC>" 'smex)
(bind-map-set-keys main-leader-map "," 'smex-major-mode-commands)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward) ; use part of file's direcotry for distinguishing buffers

(setq ido-enable-flex-matching t) ; bb matches beep boop
(setq ido-use-filename-at-point nil)
(setq ido-use-virtual-buffers t) ; include recent files in buffer list

(ido-everywhere t)
(ido-ubiquitous-mode t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; code autocompletion
(global-company-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; smartparens
(require 'smartparens-config)
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

;; nerd commenter
(bind-map-set-keys main-leader-map
  ";" 'evilnc-comment-or-uncomment-lines)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'ux-config)
