(require 'package)
; TODO: inject these in
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defun ensure-is-installed! (p)
  (when (not (package-installed-p p))
    (package-install p)))

(defun ensure-are-installed! (ps)
  (dolist (p ps)
    (ensure-is-installed! p)))

(provide 'powerpack)
