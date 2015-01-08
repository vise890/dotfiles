;; * line numbers
(global-linum-mode t)

;; * no splash screen
(setq inhibit-splash-screen t)

;; * git-gutter: git diffs in the gutter
(require 'git-gutter)
(global-git-gutter-mode t)

;; * flycheck: syntax chekcker
(add-hook 'after-init-hook #'global-flycheck-mode)

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

(provide 'ux)
