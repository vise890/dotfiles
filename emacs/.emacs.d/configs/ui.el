;;; ui.el --- UI additions

;;; Commentary:
;; Tweaks to the user interface

;;; Code:

;; * fonts
(setq global-font "Ubuntu Mono-18")
(set-face-attribute 'default t :font  global-font)
(set-frame-font global-font nil t)

;; * Color theme
(load-theme 'monokai t)

;; * line numbers
(global-linum-mode t)

;; * no splash screen
(setq inhibit-splash-screen t)

;; * git-gutter: git diffs in the gutter
(global-git-gutter-mode t)

(provide 'ui)
;;; ui.el ends here
