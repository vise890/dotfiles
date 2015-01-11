;;; clojure.el --- Clojure config

;;; Commentary:
;; All the clojure related things

;;; Code:
(defun my-clj-hook ()
  "Enable all the clojure goodies."
  (eldoc-mode)
  (smartparens-strict-mode)
  (rainbow-delimiters-mode))

;; eldoc in Clojure buffers
(add-hook 'clojure-mode-hook 'my-clojure-mode)

;;; clojure.el ends here
