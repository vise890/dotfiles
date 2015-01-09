;;; ui.el --- UI additions

;;; Commentary:
;; Tweaks to the user interface

;;; Code:

;; * Color theme
(load-theme 'monokai t)

;; * line numbers
(global-linum-mode t)

;; * no splash screen
(setq inhibit-splash-screen t)

;; * git-gutter: git diffs in the gutter
(require 'git-gutter)
(global-git-gutter-mode t)


(provide 'ui)
;;; ui.el ends here
