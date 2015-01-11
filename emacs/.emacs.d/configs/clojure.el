;;; clojure.el --- Clojure config

;;; Commentary:
;; All the clojure related things

;;; Code:
(defun my-clojure-hook ()
  "Enable all the clojure goodies."
  (eldoc-mode)
  (smartparens-strict-mode)
  (rainbow-delimiters-mode))

;; eldoc in Clojure buffers
(add-hook 'clojure-mode-hook 'my-clojure-hook)

(provide 'clojure)
;;; clojure.el ends here
