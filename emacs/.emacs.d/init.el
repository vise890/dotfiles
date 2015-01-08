;;; * Package Manager
;;; See ~./Cask~ file
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;;; * configs are in their respective packages
(add-to-list 'load-path "~/.emacs.d/configs")

;; * Color theme
(load-theme 'monokai t)

(require 'ux) ; UX/UI stuff

(require 'vim)

(require 'markdown)

(require 'elisp)
