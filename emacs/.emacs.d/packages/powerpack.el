(require 'package)
(package-initialize)

; TODO: inject these in
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(when (not package-archive-contents)
  (package-refresh-contents))

(defun ensure-is-installed! (p)
  (when (not (package-installed-p p))
    (package-install p)))

(defun ensure-are-installed! (ps)
  (dolist (p ps)
    (ensure-is-installed! p)))

(provide 'powerpack)
