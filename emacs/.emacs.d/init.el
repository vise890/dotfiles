; lisp mode / lispy for structural editing
; make main-leader-map work in dired mode
; magit
; powerline + faces
; recent files/projects
; neotree
(setq exec-path (append exec-path '("/usr/local/bin")))
(defun init-el-edit ()
  (interactive)
  (set-buffer (find-file "~/.emacs.d/init.el")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/packages")
(require 'powerpack)
(ensure-are-installed! '(req-package bind-map))
(eval-when-compile (require 'use-package))
(require 'diminish)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package bind-map
  :ensure t
  :config
  (bind-map main-leader-map
    :evil-keys ("<SPC>")
    :evil-states (normal visual)))

(add-to-list 'load-path "~/.emacs.d/config")
(require 'evil-config)
(require 'ui-config)
(require 'ux-config)

(require 'elisp-config)
;(require 'clojure-config)
(require 'scala-config)

(require 'deft-config)
