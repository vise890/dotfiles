(use-package better-defaults :ensure t)
(fset 'yes-or-no-p 'y-or-n-p) ; yes/no -> y/n
(setq ring-bell-function 'ignore)

(use-package company
  :ensure t
  :diminish company-mode
  :commands company-mode
  :init
  (setq
   company-dabbrev-ignore-case nil
   company-dabbrev-code-ignore-case nil
   company-dabbrev-downcase nil
   company-idle-delay 0
   company-minimum-prefix-length 0))

(use-package ag :ensure t)
(use-package projectile
  :ensure t
  :init (setq projectile-use-git-grep t)
  :config (projectile-global-mode t)
  :bind (:map main-leader-map
              ("pf" . projectile-find-file)
              ("pa" . projectile-ag)
              ("pg" . projectile-grep)))

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package ido-ubiquitous
  :ensure t
  :demand
  :init
  (setq
   ido-enable-flex-matching t
   ido-use-virtual-buffers t) ;include recent files
  :config
  (ido-mode t)
  (ido-everywhere t)
  (ido-ubiquitous-mode t))

(use-package evil-nerd-commenter
  :ensure t
  :bind (:map main-leader-map
              (";" . evilnc-comment-or-uncomment-lines)))

(use-package undo-tree
  :diminish undo-tree-mode
  :config (global-undo-tree-mode)
  :bind (:map main-leader-map
              ("ut" . undo-tree-visualize)))

(use-package highlight-symbol
  :ensure t
  :diminish highlight-symbol-mode
  :commands highlight-symbol-at-point
  :bind (:map main-leader-map
              ("hs" . highlight-symbol)))

(use-package uniquify
  :config
  (setq uniquify-buffer-name-style 'forward))

(use-package smex
  :ensure t
  :config (smex-initialize)
  :bind (:map main-leader-map
              ("<SPC>" . smex)
              ("," . smex-major-mode-commands)))

(use-package goto-chg
  :ensure t
  :commands goto-last-change goto-last-change-reverse
  :bind (:map main-leader-map
              ("``" . goto-last-change)
              ("~~" . goto-last-change-reverse)))

(use-package smartparens
  :diminish smartparens-mode
  :config (require 'smartparens-config))

;; window movement/management
(bind-map-set-keys main-leader-map
  "wh" 'windmove-left
  "wl" 'windmove-right
  "wj" 'windmove-down
  "wk" 'windmove-up
  "wq" 'delete-window)

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

(bind-map-set-keys main-leader-map
  "ad" 'dired)

(provide 'ux-config)
