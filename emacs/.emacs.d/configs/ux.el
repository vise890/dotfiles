;;; ux.el --- UX additions

;;; Commentary:
;; User experience gizmos

;;; Code:

;; y/n instead of 'yes' and 'no'
(defalias 'yes-or-no-p 'y-or-n-p)

;; * flycheck: syntax chekcker
(add-hook 'after-init-hook #'global-flycheck-mode)

;; * company-mode: code completion
(setq company-idle-delay 0.2)
(add-hook 'after-init-hook 'global-company-mode)

;; * Interactively do things
(require 'ido)
(ido-mode t)
(ido-ubiquitous-mode t)

;; * projectile: interact with projects (think ctrl-P 2.0)
(projectile-global-mode)
(setq projectile-require-project-root nil) ; use projectile everywhere

;; * Flx: fuzzy matching
(flx-ido-mode t)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

;; * smex: smart M-x
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; * neotree: nerdtree like thing
(global-set-key [f8] 'neotree-toggle)

(provide 'ux)
;;; ux.el ends here
