;;; init.el --- Where the magic begins

;;; Commentary:
;; the point of entry for all other configurations

;;; Code:

;; * Package Manager
;; See ~./Cask~ file
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; * configs are in their respective packages
(add-to-list 'load-path "~/.emacs.d/configs")

(require 'ui)

(require 'ux)

;; Languages
(require 'markdown)
(require 'clojure)
(require 'elisp)

;; must be loaded last
(require 'vim)
;;; init.el ends here
