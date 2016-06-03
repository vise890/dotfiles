(bind-map scala-leader-map
  :evil-keys (",")
  :evil-states (normal visual)
  :major-modes (scala-mode sbt-mode))

(use-package sbt-mode :ensure t)

(use-package ensime
  :ensure t
  :commands ensime ensime-mode
  :bind (:map scala-leader-map
              ("/"  . ensime-search)
              ("ee" . ensime-print-errors-at-point)
              ("el" . ensime-show-all-errors-and-warnings)

              ("xx" . ensime-typecheck-all)

              ("gg" . ensime-edit-definition)
              ("gt" . ensime-goto-test)
              ("gi" . ensime-goto-impl)

              ("hh" . ensime-show-doc-for-symbol-at-point)
              ("hu" . ensime-show-uses-of-symbol-at-point)
              ("ht" . ensime-print-type-at-point)

              ("fb" . ensime-format-source)

              ("rr" . ensime-refactor-diff-rename)
              ("rv" . ensime-refactor-diff-extract-local)
              ("rm" . ensime-refactor-diff-extract-method)
              ("ri" . ensime-refactor-diff-organize-imports)

              ("ta" . ensime-sbt-do-test-dwim)
              ("tr" . ensime-sbt-do-test-quick-dwim)
              ("tt" . ensime-sbt-do-test-only-dwim)

              ))

(add-hook 'scala-mode-hook 'ensime-mode)
(add-hook 'scala-mode-hook 'smartparens-strict-mode)
(add-hook 'scala-mode-hook 'rainbow-delimiters-mode)
(add-hook 'scala-mode-hook 'whitespace-cleanup-mode)
(add-hook 'scala-mode-hook 'company-mode)


;; Don't use scala checker if ensime mode is active, since it provides
;; better error checking.
(with-eval-after-load 'flycheck
(defun scala/disable-flycheck-scala ()
    (push 'scala flycheck-disabled-checkers))

(add-hook 'ensime-mode-hook 'scala/disable-flycheck-scala))

(provide 'scala-config)
