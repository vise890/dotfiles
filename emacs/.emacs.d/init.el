; lisp mode / lispy for structural editing
; make main-leader-map work in dired mode
; magit
; powerline + faces
; recent files/projects
; use-package
; neotree

(defun init-el-edit ()
  (interactive)
  (set-buffer (find-file "~/.emacs.d/init.el")))

(add-to-list 'load-path "~/.emacs.d/packages")
(add-to-list 'load-path "~/.emacs.d/config")

(require 'powerpack)
(setq my-packages
      '(req-package
        which-key
        better-defaults
        bind-map))
(ensure-are-installed! my-packages)
(require 'req-package)

;; bind-map (multiple evil leaders)
(bind-map main-leader-map
  :evil-keys ("<SPC>")
  :evil-states (normal visual))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'evil-config)
(require 'ui-config)
(require 'ux-config)

(require 'elisp-config)
;(require 'clojure-config)

;(require 'deft-config)
(require 'dired-config)

(req-package-finish)
