;;; * Package Manager
;;; See ~./Cask~ file
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;;; * configs are in their respective packages
(add-to-list 'load-path "~/.emacs.d/configs")

(require 'ui)

(require 'ux)

(require 'vim)

;;; Languages
(require 'markdown)
(require 'elisp)
