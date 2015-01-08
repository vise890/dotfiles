;;; ux.el --- UX additions

;;; Commentary:
;; User experience gizmos

;;; Code:

;; * flycheck: syntax chekcker
(add-hook 'after-init-hook #'global-flycheck-mode)

;; * company-mode: code completion
(add-hook 'after-init-hook 'global-company-mode)

;; * Interactively do things
(require 'ido)
(require 'ido-ubiquitous)
(ido-mode 1)
(ido-ubiquitous-mode 1)

;; * projectile: interact with projects (think ctrl-P 2.0)
(projectile-global-mode)
(setq projectile-require-project-root nil) ; use projectile everywhere

;; * Flx: fuzzy matching
(require 'flx-ido)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

;; * smex: smart M-x
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; * helm: incremental completion + narrowing
(require 'helm-config)
(helm-mode 1)

(provide 'ux)
;;; ux.el ends here
